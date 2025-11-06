#!/bin/bash
# Monitor system process and send alert if CPU or Memory usage exceeds threshold
ps aux --sort=-%mem | head -n 6