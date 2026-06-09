BUILD_DIR := build
APP       := $(BUILD_DIR)/myproject_app

.PHONY: all configure build test run clean rebuild help

all: build

configure:
	cmake -S . -B $(BUILD_DIR)

build: configure
	cmake --build $(BUILD_DIR)

test: build
	ctest --test-dir $(BUILD_DIR) --output-on-failure

run: build
	./$(APP)

clean:
	rm -rf $(BUILD_DIR)

rebuild: clean build

help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/## //'
