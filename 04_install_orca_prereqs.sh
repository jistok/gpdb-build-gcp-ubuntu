#!/bin/bash

dir="gp-xerces/build"

git clone https://github.com/greenplum-db/gp-xerces
mkdir $dir
cd $dir
../configure
make
sudo make install
cd ../../

