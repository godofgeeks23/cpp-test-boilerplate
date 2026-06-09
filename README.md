# myproject

A starter template for C++ projects with unit testing via GoogleTest.

## Layout

```
myproject/
├── CMakeLists.txt          # top-level build script
├── include/myproject/      # PUBLIC headers (.hpp)
│   └── math.hpp
├── src/                    # implementation + private headers
│   ├── math.cpp
│   └── main.cpp
├── tests/
│   └── test_math.cpp
├── external/               # vendored third-party code (optional)
└── build/                  # all build output — gitignored
```

## Prerequisites

- CMake ≥ 3.20
- A C++20 compiler
- GoogleTest (`brew install googletest` on macOS)

## Quick start (Makefile shortcuts)

```sh
make build    # compile the library, app, and tests
make test     # build, then run all tests
make run      # build, then run the demo app
make clean    # delete the build/ directory
make rebuild  # clean + build from scratch
make help     # list all targets
```

Each target builds first if needed, so `make test` and `make run` work from a
clean checkout with no extra steps.

## Build & test (raw commands)

The Makefile just wraps these:

```sh
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
./build/myproject_app
```
