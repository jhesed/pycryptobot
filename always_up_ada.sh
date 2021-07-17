#!/bin/bash
SCRIPT_DIR=/home/dev_jhesed/ADAUSD_bot
result=`ps aux | grep -i "ADAUSD" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "ADA script is running"
   else
	cd $SCRIPT_DIR
        nohup python3 "${SCRIPT_DIR}/pycryptobot.py" &
fi
