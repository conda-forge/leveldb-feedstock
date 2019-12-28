#!/bin/bash

mkdir build
pushd build
cmake \
  -GNinja \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib \
  ..
ninja install
popd
