#!/bin/bash


### Build and check

make
make check


### Install manually ( no make install :) )

# Ensure there is somewhere to put this stuff
mkdir -p $PREFIX/include
mkdir -p $PREFIX/lib

# Move over the libs
mv out-shared/libleveldb.* $PREFIX/lib/
mv out-static/lib{leveldb,memenv}.a $PREFIX/lib/

# Move over the includes
mv include/leveldb $PREFIX/include/
