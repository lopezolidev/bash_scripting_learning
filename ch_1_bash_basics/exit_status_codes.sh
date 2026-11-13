#!/bin/bash

ls -l  > /dev/null
echo "The status code of the ls command was: $?"
# this command has successful exit code

lzl 2> /dev/null
echo "The status code of the non-existing lzl command was: $?"
# this command has a failure exit code

