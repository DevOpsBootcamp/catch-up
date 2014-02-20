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

if [ $1 -gt 3 ]; then
    echo "Nothing to do for Lesson 04."
fi

if [ $1 -gt 4 ]; then
    echo "Updating for Lesson 05."
    sudo yum install python-virtualenv*
    virtualenv ~/systemview_venv
    source ~/systemview_venv/bin/activate
    git clone git@github.com:DevOpsBootcamp/systemview.git ~
    pip install flask
    pip install argparse
fi

if [ $1 -gt 5 ]; then
    echo "Nothing to do for Lesson 06."
fi
