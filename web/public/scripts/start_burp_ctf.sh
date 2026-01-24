#!/bin/bash
echo "Starting burp_ctf..."
# Pull latest just in case? Or just run.
docker run -d -p 9005:80 --restart always --name burp_ctf joshbeck2024/ctf-burp-suite-basic-training
    echo "burp_ctf started! Open http://cyberlessons101.com (mapped locally)"
