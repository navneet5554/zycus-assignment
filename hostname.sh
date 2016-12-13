#!/bin/bash

# Script to run user-specified command over ssh on multiple remote hosts

# set internal field separator to comma for commandline arg
IFS=','

# read command from STDIN
echo -n "Enter Command > "
read cmd

# loop over all hosts supplied in commandline arg and run the command over ssh 
for i in $*
do
ssh root@$i "$cmd" &
done

