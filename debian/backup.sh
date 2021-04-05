#!/bin/sh
FILE=data/backup/worlds.zip

if [ -e $FILE ]; then
  rm $FILE
fi

zip -r $FILE worlds