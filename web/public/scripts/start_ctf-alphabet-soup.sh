#!/bin/bash
echo "Starting ctf-alphabet-soup..."
# Pull latest just in case? Or just run.
docker run -d -p 3777:5000 --restart always --name ctf-alphabet-soup joshbeck2024/ctf-alphabet-soup
    echo "ctf-alphabet-soup started! Open http://cyberlessons101.com (mapped locally)"
