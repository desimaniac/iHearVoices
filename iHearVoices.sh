#!/bin/bash

# Written by Aaron Wurthmann
#
# You the executor, runner, user accept all liability.
# This code comes with ABSOLUTELY NO WARRANTY.
# You may redistribute copies of the code under the terms of the GPL v2.
#
# --------------------------------------------------------------------------------------------
# Name: iHearVoices.sh 
# Date: 2016.10.10 ver 1
# Tested on: macOS Sierra 10.12
#
# Summary:
# What can I say? <-- see what I did there? Eh? Eh?
# I was bored and I wanted to hear all the "say" voices.
# Mostly this was a learning project for me. Bash is not my go to language yet.
# What I learned from this was that for loops use whitespace and don't care about quotes.
# Also that while accepts < as a method of input.
# ------------------------------------------------------------------------------------------

if [ -s ./voices.tmp ] then
    rm ./voices.tmp
fi

say -v '?' | grep "en_" | awk -F '[[:space:]][[:space:]]+' '{ print $1}' >> voices.tmp

while read i; do 
    echo "Hello I am $i"
    say -v $i "Hello am $i"
done < ./voices.tmp

rm ./voices.tmp
