#!/bin/bash
#
# $1: dir for amigo
# $2: dir for original
#
for file in `find $1 -name "*.smali"`
do
        newfile=${file/$1/$2}
        addfile=${file/$1/$3}

        if [ ! -f "$newfile" -a ! -f "$addfile" ]
        then
                mkdir -p `dirname $addfile`
                echo "add smali from amigo: $file"
                cp $file $addfile
        fi
done

if [ -f "customize_framework.sh" ]; then
	./customize_framework.sh $1 $2
fi
