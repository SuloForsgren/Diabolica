#!/bin/bash

nasm -f bin boot_sect.bin -o diabolica.bin
qemu-system-x86_64 -drive format=raw,file=diabolica.bin 

