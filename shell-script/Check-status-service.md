# Check Service Health

```shell
#!/bin/bash
SERVICE="nginx"
# Chek if the service is running or not, if not start the service
if systemctl is-active --quite $SERVICE; then
  echo "$SERVICE is running"
else 
  echo "$SERVICE is running"
systemctl start $SERVICE
fi
```