#!/bin/bash
echo "Starting js_flag..."
# Pull latest just in case? Or just run.
docker run -d --restart unless-stopped -p 9005:80 --name js_flag joshbeck2024/js_flag_1:latest
    echo "js_flag started! Open http://cyberlessons101.com (mapped locally)"
