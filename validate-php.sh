#!/bin/bash

# command line option to exclude directories 
while getopts "e:" flag
do
	case "${flag}" in 
		e) array+=("$OPTARG");;
	esac
done


find_cmd=""
# craft the 'find .' command to prune directories with -e flag input(s)
# example usage: $ ./validate-php.sh -e /vendor
if (( ${#array[@]} )) # array not empty
then
	find_cmd="\("
	for val in "${array[@]}"
	do
	    # echo "$val"
	    directory=" -path '*$val' -o"
	    find_cmd="${find_cmd}${directory}"
	done

	#echo not empty
	# remove last five chars from string and end find cmd
	find_cmd="${find_cmd%??}\) -prune -o -print"
fi

# find php files in current working directory and check syntax
for file in `eval find . $find_cmd`
do
	if [[ ($file == *.php) || ($file == *.phtml) ]]
	then
            output=`php --syntax-check $file`
            if [ "$output" != "No syntax errors detected in $file" ]
            then 
                echo $output
		echo
	    fi
    fi
done
