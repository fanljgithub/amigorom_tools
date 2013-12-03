#!/bin/bash

build_prop_file=$1
# other arguments: # product=$2 # number=$3 # version=$4
curr_date=`date -R`
utc_date=`date +%s -d "$curr_date"`
echo $utc_date
cat $build_prop_file | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$3/" \
						-e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc_date/" \
                      > $build_prop_file.new

#echo "ro.product.mod_device=$2" >> $build_prop_file.new
#echo "ro.skia.use_data_fonts=1" >> $build_prop_file.new
mv $build_prop_file.new $build_prop_file

