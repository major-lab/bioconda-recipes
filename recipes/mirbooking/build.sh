#!/bin/sh

BUILDDIR=$(mktemp -d)

source compilervars.sh intel64

meson --prefix $PREFIX -Dwith_openmp=true -Dwith_introspection=true -Dwith_mpi=true -Dwith_mkl=true -Dwith_mkl_ilp64=true -Dwith_mkl_tbb=true -Dwith_mkl_fftw3=true -Dwith_mkl_lapack=true -Dwith_mkl_dss=true -Dwith_mkl_cluster=true $BUILDDIR
ninja -C $BUILDDIR
ninja -C $BUILDDIR install
