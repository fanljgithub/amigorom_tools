#!/bin/bash
#
# $1: dir for original amigo app 
# $2: dir for target amigo app
#
if [ -f "customize_amigo_app.sh" ]; then
    ./customize_amigo_app.sh $1 $2
    if [ $? -ne 0 ];then
       exit 1
    fi
fi


