```shell
#!/bin/bash
HOST="google.com"

OUTPUT_FILE="/home/ubuntu/script/output.txt"

if ping -c 1 $HOST &> /dev/null
then
echo "$HOST is reachable" >> OUTPUT_FILE
else
echo "$HOST is NOT reachable" >> OUTPUT_FILE
```