#!/bin/bash

nc -z localhost 80
rt_val=$?

if [ $rt_val != 0 ]; then
    exit 3
else
    exit 0
fi
