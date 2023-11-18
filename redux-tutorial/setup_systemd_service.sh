#!/bin/bash

# Step 1: Create a Bash script
echo '#!/bin/bash

# Your startup commands here
echo "Hello, this is my startup script!" > /tmp/startup_log.txt
' > /path/to/myscript.sh

chmod +x /path/to/myscript.sh

# Step 2: Create a systemd service unit
echo '[Unit]
Description=My Startup Script

[Service]
ExecStart=/path/to/myscript.sh

[Install]
WantedBy=default.target
' > /etc/systemd/system/myscript.service

# Step 3: Reload systemd
systemctl daemon-reload

# Step 4: Enable the service
systemctl enable myscript.service

# Step 5: Start the service
systemctl start myscript.service

# Step 6: Check the status
systemctl status myscript.service
