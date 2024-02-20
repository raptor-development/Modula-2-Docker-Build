#!/bin/bash

DIRECTORY_SIZE="4.0K"

while :
do
  if [ -z "$(ls -A ./compile)" ]; then
    echo "Empty"
  else
    if [[ "$(du -hs ./compile)" == "4.0K" ]]; then
      DIRECTORY_SIZE="$(du -hs ./compile)"
    else
      if [[ "$(du -hs ./compile)" == "$DIRECTORY_SIZE" ]]; then
        gm2 ./compile -o "./compiled/compiled-$(date +%s).mod"
        rm -rf ./compile
        mkdir ./compile
        DIRECTORY_SIZE=0
      else
        DIRECTORY_SIZE="$(du -hs ./compile)"
      fi
    fi
  fi
  sleep 2
done
