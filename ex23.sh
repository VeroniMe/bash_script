#!/bin/bash
# Merkulova Veronika 336249362

#variables initialization
system_flag=0
host_flag=0
host_size=0
sys_size=0

#checking if number of arguments is right
if test $# -eq 0 
then
    echo "Invalid input"
else
    #checking what is input
    if test $1 = 'host'
    then
        host_flag=1
    elif test $1 = 'system'
    then
        system_flag=1
    fi 
    number_of_arguments=$[$#-1]

    # *-----------HOST FLAGS-----------*
    if [ "$host_flag" -eq 1 ] 
    then
       declare -a host_array #declare array for flags
       for arg in "$@"
       do 
            case $arg in
                --name)
                    host_array+="Icon "
                    host_size=$host_size+1
                shift
                ;;                
                --static_hostname)
                    host_array+="Static "
                    host_size=$host_size+1   
                shift
                ;;
                --icon_name)
                    host_array+="Icon "
                    host_size=$host_size+1   
                shift
                ;;
                --machine_id)
                    host_array+="Machine "
                    host_size=$host_size+1   
                shift
                ;;
                --boot_id)
                    host_array+="Boot "
                    host_size=$host_size+1   
                shift
                ;;
                --virtualization)
                    host_array+="Virtualization "
                    host_size=$host_size+1   
                shift
                ;;
                --kernel)
                    host_array+="Kernel "
                    host_size=$host_size+1   
                shift
                ;;
                --architecture)
                    host_array+="Architecture "
                    host_size=$host_size+1   
                shift
                ;;                    
            esac
        done

        if [ $[host_size] -eq 0 ]  #no appropriate flags
        then
            cat ./hostnamectl
        else
            host_array=$(echo $host_array | tr ' ' '\n' | uniq) #replace doubled flags           
            for pattern in $host_array
            do
                # print with grep from os-release, without " in borders and cutting fields 
                grep -i -w $pattern hostnamectl | cut -f 2- -d ":" | xargs 
       
            done
       
        fi 
    # *-----------SYSTEM FLAGS-----------*
    elif [ "$system_flag" -eq 1 ]
    then
        declare -a system_array #declare array for flags
        for arg in "$@"
        do
            case $arg in
                --name)
                system_array+="NAME "
                sys_size=$sys_size+1
                shift
                ;;
                --version)
                    system_array+="VERSION "
                    sys_size=$sys_size+1
                shift
                ;;
                --pretty_name)
                    system_array+="PRETTY_NAME "
                    sys_size=$sys_size+1
                shift
                ;;
                --home_url)
                    system_array+="HOME_URL "
                    sys_size=$sys_size+1
                shift
                ;;
                --support_url)
                    system_array+="SUPPORT_URL "                    
                    sys_size=$sys_size+1
                shift
                ;;
            esac
        done

        if [ $[sys_size] -eq 0 ] #no appropriate flags
        then
            cat ./os-release
        else   
            system_array=$(echo $system_array | tr ' ' '\n' | uniq)  #replace doubled flags
            for pattern in $system_array
            do
                # print with grep from os-release, without " in borders and cutting fields 
                grep -i -w $pattern os-release | cut -f 2- -d "=" | tr -d '"'
       
            done       
        fi         
    else
        echo "Invalid input"           
    fi        
fi 
