cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE=Release ^
      .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

cmake --install .
if errorlevel 1 exit 1
