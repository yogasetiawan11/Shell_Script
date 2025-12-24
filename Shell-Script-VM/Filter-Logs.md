# Filtering out Logs
grep command often used to filtering specific information within a file. in this case I create grep to look for some 'ERROR' inside Log.file.

- Example Logs inside the ``Log.file`` :
```bash
[2025-07-06 10:21:45] ERROR: Failed to connect to database: Timeout after 30 seconds
[2025-07-06 10:22:03] WARNING: Memory usage exceeded 85%
[2025-07-06 10:23:11] ERROR: User authentication failed for user 'admin'
[2025-07-06 10:24:40] CRITICAL: Unexpected shutdown - Code 503
[2025-07-06 10:25:02] ERROR: FileNotFoundError: config.yaml not found in /etc/app/
[2025-07-06 10:26:18] WARNING: Disk space low on /dev/sda1 (remaining: 2%)
[2025-07-06 10:27:59] ERROR: Ansible playbook failed - Missing variable 'hostname'
[2025-07-06 10:28:31] INFO: System restarted by user 'root'
[2025-07-06 10:29:00] ERROR: SSH connection refused from 192.168.1.25 - Possible brute-force
```

You can filter the Logs above using ``grep``
Example:
```bash
$ grep "ERROR" 01-Log.file.sh
```
Output:
```sh
[2025-07-19 20:00:02] [ERROR] [PaymentService] - Payment failed: Card declined
[2025-07-19 20:00:05] [ERROR] [Database] - Failed to connect to MySQL server on port 3306
[2025-07-19 20:00:09] [ERROR] [AuthService] - Invalid credentials for user: unknown@example.com
[2025-07-19 20:00:11] [ERROR] [BackupService] - Disk quota exceeded during backup
[2025-07-19 20:00:18] [ERROR] [API] - 500 Internal Server Error on /api/products
[2025-07-19 20:00:20] [ERROR] [ConfigService] - Missing environment variable: DB_PASSWORD
[2025-07-19 20:00:02] [ERROR] [PaymentService] - Payment failed: Card declined
[2025-07-19 20:00:05] [ERROR] [Database] - Failed to connect to MySQL server on port 3306
[2025-07-19 20:00:09] [ERROR] [AuthService] - Invalid credentials for user: unknown@example.com
[2025-07-19 20:00:11] [ERROR] [BackupService] - Disk quota exceeded during backup
[2025-07-19 20:00:18] [ERROR] [API] - 500 Internal Server Error on /api/products
[2025-07-19 20:00:20] [ERROR] [ConfigService] - Missing environment variable: DB_PASSWORD
```
You can also show how many "ERROR" massages you can add -c (count)besides grep command. 
- Example:
```sh
$ grep -c "ERROR" 01-Log.file.sh
```
Output:
```sh
12 # this demostrate how many "ERROR" inside the log.file
```
