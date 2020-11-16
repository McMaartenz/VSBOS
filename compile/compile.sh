#!/bin/bash

echo "Merging.."

cat \
../boot/bootloader.vsb \
../boot/main.vsb \
../boot/kernel.vsb \
../boot/addblck.vsb \
../boot/rmblck.vsb \
> script.txt

echo "Removing leading whitespace.."

sed "s/^[ \t]*//" -i script.txt
unix2dos script.txt

echo "Done."