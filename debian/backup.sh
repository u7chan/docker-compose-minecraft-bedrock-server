#!/bin/sh
TIMESTAMP=$(TZ=UTC-9 date '+%Y_%m_%d_%H_%M')
FILE=data/backup/$LEVEL_NAME_$TIMESTAMP.zip
WORLD_DIR=worlds/$LEVEL_NAME

if [ -e $FILE ]; then
  rm $FILE
fi

if [ -e $WORLD_DIR ]; then
  zip -r $FILE $WORLD_DIR
fi