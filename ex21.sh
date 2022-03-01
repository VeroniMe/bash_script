#!/bin/bash
# Merkulova Veronika 336249362

if test $# -eq 3
then
    cd $1   #go to input directory
    for i in $(ls -v)
    do
        ext="${i##*.}"   #extract extenion
        if test $ext = $2  #if there is right extension
        then
            if [[ -f $i ]]   #if there is file and not derectory
            then
            cat $i|sort|grep -i $3   # print
            fi            
        fi
    done
else
    echo "Not enough parameters"    
fi    


