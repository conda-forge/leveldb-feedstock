#!/bin/bash

mkdir build
pushd build
cmake -GNinja -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=$PREFIX ..
ninja install
popd
