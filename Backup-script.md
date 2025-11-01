# Backup script
A backup script in shell scripting is a script written in a shell language (like Bash) to automate the process of creating backups of files, directories, or databases. It typically involves copying data from one location to another, compressing files, and optionally scheduling the script to run at regular intervals using tools like cron.


# Create a file to run the script 
```shell
#!/bin/bash
SOURCE="/home/ubuntu/dir_information"
DESTINATION="/home/ubuntu/dir_destination"
DATE=$( date +"%Y-%m-%d %H:%M:%S")

# Create directory and create the file
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "✔Backup completed on $DATE"
```

Grand execute access to the script-file
```shell
sudo chmod +x file-of-the-script.sh
```

Execute the script
```shell
./file-of-the-script.sh
```

## Use a [cronjob](https://crontab.guru/) to execute automatically

- Run crontab -e 
- Choose no.1 (using nano)
- Inside nano will look like this.
```shell 
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command

# here you add cronjob and your shell script
5 4 * * * ./your-shell-script.sh

```