#!/bin/bash

cat index_top.html.part > index.html;

find ./media -type f -print | sed 's@.*/@@' | sort -n | while read file ; do
  if [[ ! $file =~ (.gif|.png) ]] ; then
    echo "<a href=\"media/"$file"\"><img class=\"screen\" src=\"assets/media_play.png\" /></a>" >> index.html
  else
    echo "<a href=\"media/"$file"\"><img class=\"screen\" src=\"media/"$file"\" /></a>" >> index.html
  fi
done

cat index_bottom.html.part >> index.html

