#!/bin/bash

# Step 1: Make your script executable
chmod +x /path/to/myscript.sh

# Step 2: Copy myscript.service to /etc/systemd/system/
cp /path/to/myscript.service /etc/systemd/system/

# Step 3: Reload systemd
systemctl daemon-reload

# Step 4: Enable the service
systemctl enable myscript.service

# Step 5: Start the service
systemctl start myscript.service

# Step 6: Check the status
systemctl status myscript.service
