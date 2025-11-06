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

- HOST -> the hostname or IP address to ping
- OUTPUT_FILE -> the file where the output will be logged
- ping -> command to check network connectivity
- if-then-else -> conditional statement to check the result of the ping command