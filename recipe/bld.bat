cmake . -B .\build ^
    -G Ninja ^
    %CMAKE_ARGS% ^
    -DSEAL_BUILD_DEPS=OFF ^
    -DSEAL_BUILD_TESTS=ON ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%"

cmake --build .\build --config Release -j %CPU_COUNT%
cmake --install .\build --config Release

.\build\bin\sealtest.exe --gtest_filter="-UIntArith.AddUInt128"
