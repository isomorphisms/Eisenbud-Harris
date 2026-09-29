#!/usr/bin/env python3
import struct
import sys
import zlib

def token(stream):
    while True:
        b = stream.read(1)
        if not b:
            raise ValueError("unexpected end of PPM")
        if b == b"#":
            stream.readline()
            continue
        if not b.isspace():
            break
    out = bytearray(b)
    while True:
        b = stream.read(1)
        if not b or b.isspace():
            return bytes(out)
        out.extend(b)

def chunk(kind, data):
    body = kind + data
    return struct.pack(">I", len(data)) + body + struct.pack(">I", zlib.crc32(body) & 0xffffffff)

src, dst = sys.argv[1], sys.argv[2]
with open(src, "rb") as f:
    if token(f) != b"P6":
        raise ValueError("expected binary PPM (P6)")
    width = int(token(f))
    height = int(token(f))
    maximum = int(token(f))
    if maximum != 255:
        raise ValueError("only 8-bit PPM is supported")
    pixels = f.read(width * height * 3)
    if len(pixels) != width * height * 3:
        raise ValueError("short PPM pixel data")

scanlines = b"".join(
    b"\x00" + pixels[y * width * 3:(y + 1) * width * 3]
    for y in range(height)
)
png = (
    b"\x89PNG\r\n\x1a\n"
    + chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0))
    + chunk(b"IDAT", zlib.compress(scanlines, 9))
    + chunk(b"IEND", b"")
)
with open(dst, "wb") as f:
    f.write(png)
