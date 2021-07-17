#!/bin/bash
SCRIPT_DIR=/home/dev_jhesed/ETHUSD_bot
result=`ps aux | grep -i "ETHUSD" | grep -v "grep" | grep -v "always_up" | wc -l`
if [ $result -ge 1 ]
   then
        echo "ADA script is running"
   else
	cd $SCRIPT_DIR
        nohup python3 "${SCRIPT_DIR}/pycryptobot.py" &
fi
