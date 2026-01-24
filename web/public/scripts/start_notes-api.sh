#!/bin/bash
echo "Starting notes-api..."
# Pull latest just in case? Or just run.
docker run -d --name notes-api -p 9000:9000 joshbeck2024/notes-api:latest
    echo "notes-api started! Open http://cyberlessons101.com (mapped locally)"
