#!/bin/bash
echo "Starting red50..."
# Pull latest just in case? Or just run.
docker run -d -p 9027:80 --name red50 --restart always joshbeck2024/ctf_xss_to_null_byte_injection_flag_red50
    echo "red50 started! Open http://cyberlessons101.com (mapped locally)"
