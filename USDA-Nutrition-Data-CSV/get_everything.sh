#!/bin/bash

if [ ! -d plant_data ] ; then 
  mkdir plant_data
fi

for i in `seq $1 $2` ; do 
  wget -P ./plant_data "http://ndb.nal.usda.gov/ndb/foods/show/$i?format=Full&reportfmt=csv"
done
