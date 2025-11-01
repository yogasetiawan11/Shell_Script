# Check Disk usage 
send an alert if the usage above the THRESHOLD

```shell
#!/bin/bash
THRESHOLD=10
df -h | grep -vE 'Filesystem|tmpfs|cdrom' | awk '{print $5 " " $}' | while read output;
do 
usage=$(echo $output | awk '{ print $1}' | cut -d'%' -f1)
partition=$(echo $output | awk '{ print $2}')
if [ $usage -ge $THRESHOLD ]; then
echo "Disk usage on $partition is at ${usage}%"
fi
done
```