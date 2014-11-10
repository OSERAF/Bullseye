#!/bin/sh

# This will run a new Rexster container detached

java -Dconfig.file=bullseye.conf -jar bullseye-webapp-1.0.0-SNAPSHOT.war 8080

