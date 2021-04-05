#!/bin/sh
SRC=data/restore
DST=worlds

mkdir $DST
for f in `ls $SRC`
do
  cp -r $SRC/$f $DST/$f
done