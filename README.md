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

## Build & test

```sh
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
```

## Run the app

```sh
./build/myproject_app
```
