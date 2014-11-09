#!/bin/sh

# This will run a new Rexster container detached

docker run --name=bullseye -h=oseraf-bullseye -p  8080:8080 -d oseraf/bullseye
