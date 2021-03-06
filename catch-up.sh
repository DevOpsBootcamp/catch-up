#!/bin/bash
if [ $# != 1 ]; then
    echo "Usage: ./catch-up.sh <Lesson #>" 
    echo "Please provide the lesson you want to upgrade to."
    echo "Optionally use `./catch-up.sh <Lesson #> m` for a minimal install"
    echo "to skip downloading Nobel database."
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
    sudo yum -y update
    sudo yum -y install git
fi

if [ $1 -gt 3 ]; then
    echo "Nothing to do for Lesson 04."
fi

if [ $1 -gt 4 ]; then
    echo "Updating for Lesson 05."
    sudo useradd vagrant
    sudo yum -y install python-virtualenv*
    virtualenv ~/systemview_venv
    source ~/systemview_venv/bin/activate
    cd ~
    git clone https://github.com/DevOpsBootcamp/systemview.git
    pip install flask
    pip install argparse
fi

if [ $1 -gt 5 ]; then
    echo "Nothing to do for Lesson 06."
fi

if [ $1 -gt 6 ]; then
    echo "Updating for Lesson 07."
    sudo yum -y install mysql-server
    sudo /sbin/service mysqld start
    sudo /usr/bin/mysql_secure_installation
    sudo mysqladmin -p create nobel
    sudo mysql -p < /vagrant/catch-up/usercreate.sql
    if [[ ! $2 == *m* ]]; then              # Not a minimal catch-up
        wget http://osl.io/nobel -O nobel.sql
        mysql -p nobel < nobel.sql
    fi
    sudo yum -y install python-devel
    sudo yum -y install mysql-devel
    cd ~
    source ~/systemview_venv/bin/activate
    cd ~/systemview
    git checkout -tb save-search origin/save-search
    pip install -r requirements.txt
    python create_tables.py
fi
