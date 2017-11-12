#!/bin/bash

# Records the country with highest life expectancy from the year 2002
# usage: sh script.sh

cut -f1,3,4 ~/Desktop/SWC_fall2017/unix_shell/Data/gapminder.txt | grep 2002 | sort -n -k3 | tail -n 1 > Country_HighestLifeExp.txt
