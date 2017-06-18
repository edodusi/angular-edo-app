#!/bin/sh
set -e
echo "Installing npm libraries....."
npm install > /tmp/npm-install.log 2>&1
echo "...done\n"
exec npm start
