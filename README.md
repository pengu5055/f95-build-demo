# *Different Build Systems for Fortran*

These are some examples of build systems for Fortran that I learned to use from [Fortran Lang](https://fortran-lang.org/learn/).

## Building with `make`
To build the program with `make` and a `Makefile`, run the following command in the root of the project:
```bash
make
```
To cleanup after build use:
```bash
make clean
```

## Building with `meson`
To build the program with `meson` and `meson.build` run the following commands in the root of the project:
```bash
meson setup build
```
The expected output is:
```bash
The Meson build system
Version: 0.61.2
Source dir: /home/pengu5055/IJS/F2/f95-build-demo/meson-build
Build dir: /home/pengu5055/IJS/F2/f95-build-demo/meson-build/build
Build type: native build
Project name: demo
Project version: undefined
Fortran compiler for the host machine: gfortran (gcc 11.4.0 "GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0")
Fortran linker for the host machine: gfortran ld.bfd 2.38
Host machine cpu family: x86_64
Host machine cpu: x86_64
Build targets in project: 1

Found ninja-1.10.1 at /usr/bin/ninja
```
Then run:
```bash
ninja -C build
```
To cleanup after build use:
```bash
ninja -C build clean
```

## Building with `cmake`
To build the program with `cmake` and `CMakeLists.txt` run the following commands in the root of the project:
```bash
cmake -B build -G Ninja
```
I did not get further than this. I hate `cmake`. It does not even know where to find the Fortran compiler. I am not going to waste my time on this.