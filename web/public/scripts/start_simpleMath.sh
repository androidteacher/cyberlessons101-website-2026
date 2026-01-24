#!/bin/bash
echo "Starting simpleMath..."
# Pull latest just in case? Or just run.
docker run -d --name simpleMath -p 9050:9050 --restart always joshbeck2024/simple_math_ctf
    echo "simpleMath started! Open http://cyberlessons101.com (mapped locally)"
