#!/bin/sh
#
# Copyright (C) 2018 daisuke-t
#
# Make android icon(ic_launcher.png) on Mac OS.
#
# Arguments:
#   $1 - source image
#
# Note:
#   Source image is PNG 24 format.


# check args.
if [ $# -ne 1 ]; then
	echo "invalid argument."
	echo $#
	exit
fi

SRC_FILE=$1


# prepare build folder.
rm -rf build
mkdir build
mkdir build/mipmap-mdpi
mkdir build/mipmap-hdpi
mkdir build/mipmap-xhdpi
mkdir build/mipmap-xxhdpi
mkdir build/mipmap-xxxhdpi


# make icon.
sips --resampleWidth 48 ${SRC_FILE} --out build/mipmap-mdpi/ic_launcher.png
sips --resampleWidth 72 ${SRC_FILE} --out build/mipmap-hdpi/ic_launcher.png
sips --resampleWidth 96 ${SRC_FILE} --out build/mipmap-xhdpi/ic_launcher.png
sips --resampleWidth 144 ${SRC_FILE} --out build/mipmap-xxhdpi/ic_launcher.png
sips --resampleWidth 192 ${SRC_FILE} --out build/mipmap-xxxhdpi/ic_launcher.png
