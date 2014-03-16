#!/bin/bash

mkdir /tmp/ruby20
cd /tmp/ruby20

wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p353.tar.gz

if ! sha512sum ruby-2.0.0-p353.tar.gz | grep "e0f26e9cd58646162f49e767ddef2d3bbb283ea52b118a43a01e743a3c65fad1c85bc1e42e6d4159e070511a5d144d5c99b693a2ca51be66e2adef8320e6b568"; then
    echo "SHA512 did not match"
    exit 1
fi

tar zxvf ruby-2.0.0-p353.tar.gz 

cd ./ruby-2.0.0-p353

export CFLAGS="-Wall -fno-strict-aliasing"
./configure --prefix=/usr/local
make

make install
