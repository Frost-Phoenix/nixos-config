#!/usr/bin/env bash

if (( RANDOM % 2 )); then
  swww img --transition-type=any $1 ;
else
  swww img --transition-type=wipe --transition-angle=135 $1 ;
fi
