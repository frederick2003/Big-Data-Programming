#!/bin/bash
if [ -r $1 ]; then
    echo "File is readable"
else
    echo "File is not readable"
fi