#!/bin/bash


START_TIME=$(date +%s)

echo "start time:$START_TIME"

sleep 10

END_TIME=$(date +%S)

echo "end time:$END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))



echo "script executed in: $TOTAL_TIME seconds"