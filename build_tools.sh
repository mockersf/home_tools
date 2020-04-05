#!/bin/bash

set -ex

for df in *.Dockerfile
do
    docker build -t ${df%.Dockerfile} -f $df .
done
