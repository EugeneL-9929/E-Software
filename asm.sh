#!/bin/bash

mkdir -p build
mkdir -p compile

make clean
make

./compile/main

echo