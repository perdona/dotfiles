#!/bin/sh

DIRECTORY="~/Projects"
if [ ! -d "$DIRECTORY" ]; then
  mkdir $DIRECTORY
fi

set DIRECTORY="~/.ssh"
if [ ! -d "$DIRECTORY" ]; then
  mkdir $DIRECTORY¬
fi


exit 0