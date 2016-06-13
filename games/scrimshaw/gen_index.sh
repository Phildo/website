#!/bin/bash

cat index_top.html.part > index.html;

find ./media -maxdepth 1 -type f -print | sed 's@.*/@@' | sort -nr | while read file ; do
  if [[ $file =~ .gif ]] ; then
    echo "<a href=\"media/"$file"\"><img class=\"screen\" src=\"media/preview/"$file"\" /></a>" >> index.html
  elif [[ $file =~ .png ]] ; then
    echo "<a href=\"media/"$file"\"><img class=\"screen\" src=\"media/"$file"\" /></a>" >> index.html
  else # most likely .mov
    echo "<a href=\"media/"$file"\"><img class=\"screen\" src=\"assets/media_play.png\" /></a>" >> index.html
  fi
done

cat index_bottom.html.part >> index.html

