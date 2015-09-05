all: weak_linking

CMAKE_FLAGS := -DCMAKE_INSTALL_PREFIX=/tmp/usr/local
UNAME := $(shell uname -s)

install_deps:
ifeq ($(UNAME),Darwin)
	brew update
	brew outdated python3 || brew upgrade python3 || brew install python3
else
	sudo add-apt-repository --yes ppa:andykimpe/cmake
	sudo add-apt-repository --yes ppa:fkrull/deadsnakes
	sudo apt-get update -qq
	sudo apt-get install cmake
	sudo apt-get install python3.4
	sudo apt-get install wget
	wget https://bootstrap.pypa.io/get-pip.py
	sudo -H python3.4 get-pip.py
	cmake --version
endif
	python3.4 --version
	sudo -H python3.4 -m pip install empy

install:
	cd build && make install

uninstall:
	cd build && make uninstall

weak_linking:
	@mkdir -p build
	cd build && touch AMENT_IGNORE
	cd build && ln -s .. ./src
	cd build && python3.4 -u ./src/ament/ament_tools/scripts/ament.py build --ament-cmake-args -DPYTHON_VERSION=3.4 --

.PHONY: clean
clean:
	rm -rf build
