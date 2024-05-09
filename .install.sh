#!/bin/sh

# install server if it doesn't exist
if [ ! -f "server/ServerLinux.sh" ]; then
  # download the server zip file
  wget https://tekxit.lol/downloads/tekxit4/8.0.0Tekxit4Server.zip

  # unzip server directory
  unzip 8.0.0Tekxit4Server.zip && rm 8.0.0Tekxit4Server.zip

  # move unzipped folder to server
  mv 8.0.0Tekxit4Server/* server/
  rm -r 8.0.0Tekxit4Server/
fi

# navigate to server directory
cd server

# run the server
./ServerLinux.sh
