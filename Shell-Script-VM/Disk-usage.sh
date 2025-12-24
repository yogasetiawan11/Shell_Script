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

- THRESHOLD -> the disk usage percentage threshold to trigger an alert
- df -h -> command to display disk space usage in human-readable format
- grep -vE -> command to exclude certain lines from the output
- awk -> command to process and extract specific fields from the output
- while read output -> loop to read each line of the processed output
- if [ $usage -ge $THRESHOLD ] -> conditional statement to check if usage