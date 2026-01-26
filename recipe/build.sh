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

$PYTHON -m pip install . -vv --no-deps --no-build-isolation --ignore-installed --no-cache-dir \
--config-settings="--global-option=build_ext" \
--config-settings="--global-option=--enable-lcms" \
--config-settings="--global-option=--enable-webp" \
--config-settings="--global-option=--enable-jpeg2000" \
--config-settings="--global-option=--enable-zlib" \
--config-settings="--global-option=--enable-jpeg" \
--config-settings="--global-option=--enable-tiff" \
--config-settings="--global-option=--enable-freetype" \
--config-settings="--global-option=--enable-webpmux"
