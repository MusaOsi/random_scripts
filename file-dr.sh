#!/bin/bash

documents=$HOME/$1

if [ -z $1 ]; then 
    echo 'Haibo TK.'
    echo 'Please enter a the directory name after the command is set.'
    exit
fi 

directory () {
    for file in $documents/*; do 
        case $file in
            $HOME/*)
                if [[ -d ${file} ]]; then
                    documents=${file}
                    directory
                fi 
                mv "$file" "`echo $file | sed 's/ //_'`"      
            ;;
        esac
    done
}

directory 