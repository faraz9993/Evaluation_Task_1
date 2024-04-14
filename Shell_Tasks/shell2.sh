#!/bin/bash
TEST=$1

tree "$TEST" > tree.txt
#https://stackoverflow.com/questions/138576/saving-tree-f-a-results-to-a-textfile-with-unicode-support
