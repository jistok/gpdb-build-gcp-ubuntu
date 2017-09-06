#!/bin/bash

# This runs as root

# CHANGEME:
# A Google Cloud Storage bucket that exists, for which you have write permission
export bucket="mgoddard-gpdb-devel"

cd /tmp

# Marker for time this process started
file="Build_Started.txt"
date > $file
gsutil cp $file gs://$bucket

# Install git
apt install -y git

# Pull this project from GitHub
repo="gpdb-build-gcp-ubuntu"
git clone https://github.com/mgoddard-pivotal/${repo}.git
cd $repo
bash ./run_this_script.sh

echo "Shutting down ..."
shutdown -h now

