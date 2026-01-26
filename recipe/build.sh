#!/bin/bash

export AVIF_ROOT=$PREFIX
export JPEG_ROOT=$PREFIX
export JPEG2K_ROOT=$PREFIX
export ZLIB_ROOT=$PREFIX
# export IMAGEQUANT_ROOT=None
export TIFF_ROOT=$PREFIX
export HARFBUZZ_ROOT=$PREFIX
export FREETYPE_ROOT=$PREFIX
export LCMS_ROOT=$PREFIX
export WEBP_ROOT=$PREFIX

export PILLOW_ENABLE_LCMS=1
export PILLOW_ENABLE_WEBP=1
export PILLOW_ENABLE_JPEG2000=1
export PILLOW_ENABLE_ZLIB=1
export PILLOW_ENABLE_JPEG=1
export PILLOW_ENABLE_TIFF=1
export PILLOW_ENABLE_FREETYPE=1
export PILLOW_ENABLE_WEBPMUX=1

$PYTHON -m pip install . -vv --no-deps --no-build-isolation --ignore-installed --no-cache-dir
