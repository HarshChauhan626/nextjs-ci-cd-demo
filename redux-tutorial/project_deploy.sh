#!/bin/bash

# Step 1: Install npm dependencies
npm install

# Step 2: Build the project
npm run build

# Step 3: Start the application using pm2
pm2 start ecosystem.config.js
