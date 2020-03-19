#!/bin/bash

# This script compiles a static library

mkdir -p ./build_static

gfortran -fPIC -Os -c ./src/amos_iso_c_fortran_wrapper.f90 -o ./build_static/amos_iso_c_fortran_wrapper.o
gfortran -fPIC -Os -c ./src/machine.for -o ./build_static/machine.o
gfortran -fPIC -Os -c ./src/zbesh.for -o ./build_static/zbesh.o

ar crv libcomplex_bessel.a ./build_static/amos_iso_c_fortran_wrapper.o ./build_static/machine.o ./build_static/zbesh.o
