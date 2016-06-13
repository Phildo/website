#!/bin/bash

cat index_top.html.part > index.html;

find ./media -type f -print | sed 's@.*/@@' | sort -n | while read file ; do
  echo "<img class=\"screen\" src=\"media/"$file"\" />" >> index.html
done;

cat index_bottom.html.part >> index.html

