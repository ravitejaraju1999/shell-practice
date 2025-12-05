#!/bin/bash

number=$1

if [($number%2) -eq 0]; then
    echo "It is even number"
else
    echo "it is odd number"

fi