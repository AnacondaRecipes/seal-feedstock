cmake . -B .\build %CMAKE_ARGS% -DSEAL_BUILD_DEPS=OFF -DSEAL_BUILD_TESTS=OFF
cmake --build .\build -j %CPU_COUNT%
cmake --install .\build
