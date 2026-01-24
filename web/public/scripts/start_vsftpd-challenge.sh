#!/bin/bash
echo "Starting vsftpd-challenge..."
# Pull latest just in case? Or just run.
docker run -d -p 9077:21 -p 6200:6200 --name vsftpd-challenge --restart always joshbeck2024/cve-2011-2523
    echo "vsftpd-challenge started! Open http://cyberlessons101.com (mapped locally)"
