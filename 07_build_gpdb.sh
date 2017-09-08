#!/bin/bash

# NOTE: this is intended to be run on an Ubuntu VM
. /etc/lsb-release

install_dir="/usr/local/gpdb"

git clone https://github.com/greenplum-db/gpdb.git -b 5X_STABLE --single-branch
cd gpdb/
./configure --with-perl --with-python --with-libxml --prefix=/usr/local/gpdb
make -j8

sudo mkdir $install_dir
sudo chown mgoddard: $install_dir
make install
cd ..

tar_file="GPDB_${DISTRIB_ID}_${DISTRIB_RELEASE}.tar.gz"
tar -C /usr/local -czvf $tar_file gpdb

# Bucket should have been exported by the script which initiates this
echo "Uploading build product $tar_file to Storage ..."
gsutil cp $tar_file gs://${bucket}

