#!/usr/bin/env bash
#
# Favicon and Apple Touch Icon Generator
#
# This bash script takes an image as a parameter, and uses ImageMagick to convert it to several
# other formats used on modern websites. The following copies are generated:
#
# * apple-touch-icon-144x144-precomposed.png
# * apple-touch-icon-114x114-precomposed.png
# * apple-touch-icon-57x57-precomposed.png
# * apple-touch-icon-72x72-precomposed.png
# * apple-touch-icon-precomposed.png
# * apple-touch-icon.png
# * favicon.ico
#
# REQUIREMENTS:
# * *nix operating system
# * Image Magick
#
# CREDIT:
# Concept from http://bergamini.org/computers/creating-favicon.ico-icon-files-with-imagemagick-convert.html
# Created by Malcolm Fell (@emarref) with input from PJ (http://pjkix.com/)

CONVERT_CMD=`which convert`
SRC_IMAGE=$1
PWD=`pwd`

if [ -z $CONVERT_CMD ] || [ ! -f $CONVERT_CMD ] || [ ! -x $CONVERT_CMD ];
then
    echo "ImageMagick needs to be installed to run this script"
    exit;
fi

if [ -z $SRC_IMAGE ];
then
    echo "You must supply a source image as the argument to this command."
    exit;
fi

if [ ! -f $SRC_IMAGE ];
then
    echo "Source image \"$SRC_IMAGE\" does not exist."
    exit;
fi

echo "Generating square base image"
$CONVERT_CMD $SRC_IMAGE -resize 256x256! -transparent white $PWD/favicon-256.png

echo "Generating various sizes for ico"
$CONVERT_CMD $PWD/favicon-256.png -resize 16x16 $PWD/favicon-16.png
$CONVERT_CMD $PWD/favicon-256.png -resize 32x32 $PWD/favicon-32.png
$CONVERT_CMD $PWD/favicon-256.png -resize 64x64 $PWD/favicon-64.png
$CONVERT_CMD $PWD/favicon-256.png -resize 128x128 $PWD/favicon-128.png

echo "Generating ico"
$CONVERT_CMD $PWD/favicon-16.png $PWD/favicon-32.png $PWD/favicon-64.png $PWD/favicon-128.png $PWD/favicon-256.png -colors 256 $PWD/favicon.ico

echo "Generating touch icons"
$CONVERT_CMD $PWD/favicon-256.png -resize 57x57 $PWD/apple-touch-icon.png
cp $PWD/apple-touch-icon.png $PWD/apple-touch-icon-precomposed.png
cp $PWD/apple-touch-icon.png $PWD/apple-touch-icon-57x57-precomposed.png
$CONVERT_CMD $PWD/favicon-256.png -resize 72x72 $PWD/apple-touch-icon-72x72-precomposed.png
$CONVERT_CMD $PWD/favicon-256.png -resize 114x114 $PWD/apple-touch-icon-114x114-precomposed.png
$CONVERT_CMD $PWD/favicon-256.png -resize 144x144 $PWD/apple-touch-icon-144x144-precomposed.png

echo "Removing temp files"
rm -rf $PWD/favicon-16.png
rm -rf $PWD/favicon-32.png
rm -rf $PWD/favicon-64.png
rm -rf $PWD/favicon-128.png
rm -rf $PWD/favicon-256.png
