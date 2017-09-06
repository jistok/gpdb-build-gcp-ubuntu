#!/bin/bash

dir="gporca/build"

git clone https://github.com/greenplum-db/gporca
mkdir $dir
cd $dir
cmake -GNinja ..
sudo ninja install
cd ../..

