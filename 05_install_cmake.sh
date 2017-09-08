#!/bin/bash

cmake="cmake-3.9.2"

curl https://cmake.org/files/v3.9/$cmake.tar.gz | tar xzvf -
cd $cmake/
./configure
make
sudo make install
cd ..

