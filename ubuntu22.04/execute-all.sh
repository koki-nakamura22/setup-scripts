#!/bin/sh

# Execute the files other than myself.
excluded_file=$(cd $(dirname $0); pwd)/$(basename $0)
dir=$(cd $(dirname $0); pwd)
for pathfile in $dir/*.sh; do
  if [ "$pathfile" = "$excluded_file" ]; then continue; fi
  sh $pathfile
done
