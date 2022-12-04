#!/bin/bash

# find php files in current working directory and check syntax
for file in `find . -path "*/vendor" -prune -o -print`
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
