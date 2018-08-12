#!/bin/bash

#VOLUME=$(perl -e "print int(65536 * ($1 / 100))")
for SINK in `pacmd list-sinks | grep 'index:' | cut -b12-`
do
  pactl set-sink-volume $SINK $1
done
