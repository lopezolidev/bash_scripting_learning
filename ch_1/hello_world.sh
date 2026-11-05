#!/bin/bash

echo "Hello, World!"

set -x
ps -a # debugging only this specific fragment
set +x

ls -a
echo "end of the script"