#!/bin/bash 

grep "Memory management" < "$1" | cut -d" " -f1
