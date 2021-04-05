#!/bin/sh
RESTORE_SCRIPT=restore.sh

if [ -e $RESTORE_SCRIPT ]; then 
  sh $RESTORE_SCRIPT
  rm $RESTORE_SCRIPT
fi

if [ -n "$SERVER_NAME" ]; then
  sed -ie "s/^server-name=.*/server-name=$SERVER_NAME/" server.properties
fi

if [ -n "$LEVEL_NAME" ]; then
  sed -ie "s/^level-name=.*/level-name=$LEVEL_NAME/" server.properties
fi

if [ -n "$ONLINE_MODE" ]; then
  sed -ie "s/^online-mode=.*/online-mode=$ONLINE_MODE/" server.properties
fi

if [ -n "$DIFFICULTY" ]; then
  sed -ie "s/^difficulty=.*/difficulty=$DIFFICULTY/" server.properties
fi

if [ -n "$LEVEL_SEED" ]; then
  sed -ie "s/^level-seed=.*/level-seed=$LEVEL_SEED/" server.properties
fi

if [ -n "$LEVEL_TYPE" ]; then
  sed -ie "s/^level-type=.*/level-type=$LEVEL_TYPE/" server.properties
fi

if [ -n "$MAX_PLAYERES" ]; then
  sed -ie "s/^max-players=.*/max-players=$MAX_PLAYERES/" server.properties
fi

rm server.propertiese # Backup file the create by 'sed'

LD_LIBRARY_PATH=. ./$FILE_NAME/bedrock_server