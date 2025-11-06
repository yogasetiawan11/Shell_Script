1. Install netstat
```shell
sudo apt install net-tools
```
2. check all connectivity and its ports
```shell
#!/bin/bash
# list all listening port and the associate with services
netstat -tuln | grep LISTEN
```