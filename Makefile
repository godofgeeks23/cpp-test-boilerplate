# Convenience shortcuts around CMake/CTest.
# Usage: `make <target>` — run `make help` to list everything.

BUILD_DIR := build
APP       := $(BUILD_DIR)/myproject_app

.PHONY: all configure build test run clean rebuild help

all: build

## configure: generate the build system into ./build
configure:
	cmake -S . -B $(BUILD_DIR)

## build: compile the library, app, and tests (configures if needed)
build: configure
	cmake --build $(BUILD_DIR)

## test: build, then run all tests via ctest
test: build
	ctest --test-dir $(BUILD_DIR) --output-on-failure

## run: build, then run the demo app
run: build
	./$(APP)

## clean: delete all build output
clean:
	rm -rf $(BUILD_DIR)

## rebuild: clean, then build from scratch
rebuild: clean build

## help: list available targets
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/## //'
