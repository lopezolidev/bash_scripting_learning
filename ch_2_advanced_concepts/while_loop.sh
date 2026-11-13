#!/bin/bash

SIGNAL_TO_STOP_LOOP="stoploop"
# this is the name of the file to verify for stopping the loop

while [[ ! -f "${SIGNAL_TO_STOP_LOOP}" ]]; do
    # checking if the file stoploop exists in the current directory to stop the loop
    echo "the file ${SIGNAL_TO_STOP_LOOP} does not exist yet..."
    echo "Checking again in 2 seconds..."
    # control messages
    sleep 2
    # exit 2 <- no difference whatsoever if this is used instead of sleep.
    # pausing the loop (process) for 2 seconds
done

echo "${FILE} appears to have some content in it!"
# when file stoploop has some content inside