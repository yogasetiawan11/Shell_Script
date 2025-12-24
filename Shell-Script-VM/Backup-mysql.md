# Backup data on Mysql

1. Install mysql
```shell 
sudo apt install mysql-server
```

2. Login to mysql 

```shell
sudo mysql -u root
```

3. By default mysql doesn't have a password, set up the password with this command:
```shell
ALTER USER 'root' @ 'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
```

4. Create a database in mysql
```shell
create database mydata;
```
my data is the name.

5. create a script for backup the data.
```shell
DB_NAME=""
BACKUP_DIR=""
DATE="$(date +"%Y-%m-%d %H:%M:%S")"
# Perform a database backup and save it to the backup dir
mysqldump -u root -p $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql
echo "database backup compeleted :$BACKUP_DIR/$DB_NAME-$DATE.sql"
```