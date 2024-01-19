if [[ "${target_platform}" == "osx-64" ]]; then
    export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
fi

cmake . -B ./build -G Ninja ${CMAKE_ARGS} -DSEAL_BUILD_DEPS=OFF -DSEAL_BUILD_TESTS=ON
cmake --build ./build -j ${CPU_COUNT}
cmake --install ./build

./build/bin/sealtest
