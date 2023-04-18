#!/bin/bash

git submodule update --init && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh
cd FlamePaper-Server
mvn clean install
cd ../
cd FlamePaper-API
mvn clean install
