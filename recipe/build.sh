#!/bin/bash

export JPEG_ROOT=$PREFIX
export JPEG2K_ROOT=$PREFIX
export ZLIB_ROOT=$PREFIX
# export IMAGEQUANT_ROOT=None
export TIFF_ROOT=$PREFIX
export FREETYPE_ROOT=$PREFIX
export LCMS_ROOT=$PREFIX
export WEBP_ROOT=$PREFIX

export DYLD_LIBRARY_PATH=${PREFIX}/lib:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=${PREFIX}/lib:$LD_LIBRARY_PATH

$PYTHON -m pip install . --no-deps --no-build-isolation --ignore-installed --no-cache-dir --global-option="build_ext" --global-option="--enable-webp" --global-option="--enable-jpeg2000" -vv
