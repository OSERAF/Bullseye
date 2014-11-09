#!/bin/sh

# This will run a new Rexster container detached

docker run --name=bullseye -h=oseraf-bullseye -p  8000:8000 -d oseraf/bullseye
