#!/bin/bash
echo "Starting neg_eq..."
# Pull latest just in case? Or just run.
docker run -d -p 9099:80 --restart always --name neg_eq joshbeck2024/ctf_negative_equity
    echo "neg_eq started! Open http://cyberlessons101.com (mapped locally)"
