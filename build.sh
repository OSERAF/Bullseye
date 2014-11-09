#!/bin/sh

rm bullseye.zip
zip bullseye.zip bullseye-dist/*
docker build -t oseraf/bullseye .
