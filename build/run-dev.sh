#!/bin/bash
set -e

printf '\n-----------------------------------\n'
echo 'Start node.js in container and serve'
echo '-----------------------------------'

docker run -u=1000:1000 -v $(pwd)/../xlii-web:/app -w=/app -p 3000:3000 --rm --name=nodedev node bash -c "npm install && npm start"
