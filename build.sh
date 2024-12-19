#!/bin/sh
CC=cc
PRG=oneko
set -e
set -x
$CC $(pkg-config --cflags x11) -funsigned-char -o $PRG -O3 -g $PRG.c  $(pkg-config --libs x11) -lm -lXrender -lXext -DSHAPE
