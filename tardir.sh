#!/bin/bash
#Archive all directories

if [ "$1" ]; then
    cd $1
fi

find . -maxdepth 1 -mindepth 1 -type d -exec tar zcvf {}.tar.gz {} --remove-files \; 2>&1 >/dev/null
