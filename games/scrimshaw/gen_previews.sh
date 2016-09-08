#!/bin/bash

find . -type f | sed 's@.*/@@' | while read file ; do
  if [[ $file =~ .gif ]] && [[ ! -f media/preview/$file ]]; then
    echo $file
    convert media/$file[0-20] -coalesce -resize 400x100 -layers OptimizeFrame media/preview/$file
  fi
done

