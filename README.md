# Shell_Script
This Repository contain about the common ``shell script`` widely use for automation purpose.

# Project Overview
This repository, contain **common script** both shell and python, is designed to provide a collection of automation scripts primarily using shell scripting and python. The goal is to simplify repetitive tasks and enhance productivity through automation.


# Fundamental Shell-script command 
```bash
#!/bin/bash
```
Explanation of the script: 
``#!`` this contain a sebang
``/bin`` represent binary 
``/bash`` represent bash
usually you use sebang at the first your Shell-script

# difference between bash, shell, ksh, dash
more or less the command, the kind of shell script that you're write are simmilar but they're very slightly different in terms of syntax the different is like the way you writting loops in bash and ksh it is totally different bash provides easy way to write and ksh is obsolete

# the different between ``#!/bin/sh`` and ``#!/bin/bash ``
both of them are same because ``#!/bin/sh`` was redirect using the linking concept to ``#!/bin/bash `` but now it's not the same because some of the Operating system has decided to use ``#!/bin/dash`` as default. so your script might not execute if you're writting in your bash scripting on a machine where bash as a default

2. Meta data
```bash
###########################
#
# author: yoga setiawan
# date:
# description:
# version: version
#
###########################
```

## Explanation of the script:
This called as Meta data tipically Meta data is a script to recognize what inside the programme is.
basically Meta data has 3 main component that is:
``Author`` this line explain who has created the script
``Date`` Date represent when this script is created
``Version`` Version represent what's version of the script has updated

# these are the common command that frequently use:
- ``set -x``: to print programe automatically
- ``df``: to print disk on vm
- ``free``: to look at how many memory that are available
- ``nproc``: to see how many cpu which vm has
- ``ps -ef``: to print all of the acitivity on vm
- ``grep`` to fiter output
- ``|``: used to get the output on the first command and send to second output
- ``curl _link_``: to retrieve any information from external source like s3, google, etc. curl is a module to interact with the API
- ``wget _link_``: wget command is same like curl the different when you use wget you will download a file within the link

# Current Features
- **Shell Scripts**: A variety of shell scripts for tasks such as file management, backups, and system monitoring.
- **Documentation**: Detailed explanations and usage instructions for complex script.
- **Python Scripting**: Automation scripts written in Python to leverage its powerful libraries and frameworks for tasks such as data processing, web scraping, and more.
- **Integration**: Combining shell and Python scripts to create more robust automation solutions.
---

# Getting Started
1. **Clone the Repository**: Use `git clone <repository-url>` to clone the repository to your local machine.
2. **Run Shell Scripts**: Navigate to the script directory and execute the shell scripts using `bash script_name.sh`.
3. **Python Environment**: Set up a Python environment to run Python scripts, ensuring all necessary packages are installed.

# Contribution
Contributions are welcome! Feel free to submit pull requests or open issues for any suggestions or improvements.

> **note:** some script contain default path, you have to adjust it with your requirement 