#!/bin/bash

function container_exists() {
    sudo docker ps -a | sed 1d | sed 's/ *$//g' | grep $1\$ > /dev/null
}

function container_running() {
    sudo docker ps | sed 1d | sed 's/ *$//g' | grep $1\$ > /dev/null
}

function container_id() {
    sudo docker ps | sed 1d | sed 's/ *$//g' | grep $1\$ | awk '{print $1}'
}

function manage_mongod() {
    if container_exists $1; then
        if container_running $1; then
            echo "$1 container already running. Skipping..."
        else
            echo "$1 container already exists. Restarting..."
            docker start $1 > /dev/null
        fi
    else
        echo "$1 container doesnt exist. Creating..."
        docker run -d -name=$1 klj613_centos6/mongod ${*:2} > /dev/null
    fi
}
