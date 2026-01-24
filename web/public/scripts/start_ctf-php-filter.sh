#!/bin/bash
echo "Starting ctf-php-filter..."
# Pull latest just in case? Or just run.
docker run -d -p 3444:80 --name ctf-php-filter --restart always joshbeck2024/ctf-php-filter
    echo "ctf-php-filter started! Open http://cyberlessons101.com (mapped locally)"
