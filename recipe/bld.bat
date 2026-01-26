set LIB=%LIBRARY_LIB%;%LIB%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%
set LIBRARY_DIRS=%LIBRARY_BIN%;%LIBRARY_LIB%

set AVIF_ROOT=%LIBRARY_PREFIX%
set JPEG_ROOT=%LIBRARY_PREFIX%
set JPEG2K_ROOT=%LIBRARY_PREFIX%
set ZLIB_ROOT=%LIBRARY_PREFIX%
set TIFF_ROOT=%LIBRARY_PREFIX%
set HARFBUZZ_ROOT=%LIBRARY_PREFIX%
set FREETYPE_ROOT=%LIBRARY_PREFIX%
set LCMS_ROOT=%LIBRARY_PREFIX%
set WEBP_ROOT=%LIBRARY_PREFIX%

%PYTHON% -m pip install . --no-deps --no-build-isolation --ignore-installed --no-cache-dir ^
--config-settings="--global-option=build_ext" ^
--config-settings="--global-option=--enable-lcms" ^
--config-settings="--global-option=--enable-webp" ^
--config-settings="--global-option=--enable-jpeg2000" ^
--config-settings="--global-option=--enable-zlib" ^
--config-settings="--global-option=--enable-jpeg" ^
--config-settings="--global-option=--enable-tiff" ^
--config-settings="--global-option=--enable-freetype" ^
--config-settings="--global-option=--enable-webpmux" -vv
if errorlevel 1 exit 1
