#!/bin/bash

set -x

#touch ../build && rm ../build -rf
mkdir -p ../build
cd ../build
cmake -DCMAKE_BUILD_TYPE=Release ..
make

# Run with the PWS file as argument
./src/virgo_plus_run $1

cd ../script
