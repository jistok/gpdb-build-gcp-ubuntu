#!/bin/bash

# Driver script which runs after startup on the VM
for script in `ls -1 | egrep '^[0-9]+.+?\.sh$'`
do
  echo "Running $script now ..."
  time bash ./$script 2>&1 | tee gpdb_compile_package.log
  echo
done

