#!/bin/bash
if [ $# != 1 ]; then
    echo "Usage: ./catch-up.sh <Lesson #>" 
    echo "Please provide the lesson you want to upgrade to."
    exit
fi

if [ $1 -gt 0 ]; then
    echo "Nothing to do for Lesson 01."
fi

if [ $1 -gt 1 ]; then
    echo "Nothing to do for Lesson 02."
fi

if [ $1 -gt 2 ]; then
    echo "Updating for Lesson 03."
    sudo yum update
    sudo yum install git
fi
