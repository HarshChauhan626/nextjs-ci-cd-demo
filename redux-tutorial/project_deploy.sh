#!/bin/bash

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use Node.js 18.18.2 as the default version
nvm use 18.18.2

# Source NVM initialization script to set up environment variables
source ~/.nvm/nvm.sh

# Install pm2 globally
npm install -g pm2

# Navigate to the project directory
cd ~/my-app/redux-tutorial

# Step 1: Install npm dependencies
npm install

# Step 2: Build the project
npm run build

# Step 3: Start the application using pm2
pm2 start ecosystem.config.js
