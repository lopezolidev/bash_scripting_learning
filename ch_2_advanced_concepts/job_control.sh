#!/bin/bash

# sending a process to the background
sleep 200 &
# [1] 9109

# checking the process state with ps tool
ps -ef | grep sleep
# sjlo        9109    6897  0 08:56 pts/1    00:00:00 sleep 200

# now checking the PID with jobs command line utility
jobs
# [1]  + running    sleep 200

# bringing the process to foreground
fg %<PID>
# [1]  + 9109 running    sleep 200

# suspending the process, no longer executing but not finished -> [CTRL + Z]
# ^Z
# [1]  + 9109 suspended  sleep 200

# sending the process to background execution again
bg %<PID>
# [1]  + 9109 continued  sleep 200

# after a while...
# [1]  + 9109 done       sleep 200