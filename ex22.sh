#!/bin/bash
# Merkulova Veronika 336249362

if test $# -eq 4
then
    cd $1 #go to input directory    
    for dir in $(find -type d|sort) #sorting for lexicography order
    do
        curr_dir=$(pwd)  #save current directory to come back
        cd $dir          #iterate trought directories
        for i in $(ls -v)
        do
            ext="${i##*.}"
            if  test $ext = $2 -a -f $i  #check if file is not directory and extension is right
            then
                awk -v size=$4 'NF>=size {print $0}' $i |sort |grep -i $3 #print only if line with number of words that we need
            fi
        done
        cd $curr_dir
    done
else
    echo "Not enough parameters"
fi    
