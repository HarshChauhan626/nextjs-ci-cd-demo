#!/bin/bash

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js 18.18.2
nvm install 18.18.2

# Use Node.js 18.18.2 as the default version
nvm alias default 18.18.2

# Install the latest version of npm
npm install -g npm@latest

# Install pm2 globally
npm install -g pm2

# Display Node.js and npm versions
node -v
npm -v
