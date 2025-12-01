#!/bin/bash


START_TIME=$(date +%s)

sleep 10 &

END_TIME=$(DATE +%S)

TOTAL_TIME=$(($END_TIME-$START_TIME))



echo "time stamp executed in:$TOTAL_TIME seconds"