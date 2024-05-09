#!/bin/sh

echo "Starting the server..."
./build.sh

docker run -it --rm \
  --name tekxit-4-server \
  -p 25565:25565 \
  -v "$(pwd)/server/":/game/server/ \
  tekxit-4-server
