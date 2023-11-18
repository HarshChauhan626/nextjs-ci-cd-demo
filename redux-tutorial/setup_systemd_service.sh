#!/bin/bash

# Step 1: Create a Bash script
echo '#!/bin/bash

chmod +x /my-app/project_deploy.sh

# Step 2: Create a systemd service unit
echo '[Unit]
Description=My Startup Script

[Service]
ExecStart=/my-app/project_deploy.sh

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
