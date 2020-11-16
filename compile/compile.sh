#!/bin/bash

echo "Merging.."
cat \
../boot/bootloader.vsb \
../boot/main.vsb \
../boot/kernel.vsb \
> script.txt

echo "Removing leading whitespace.."
sed "s/^[ \t]*//" -i script.txt

echo "Done."