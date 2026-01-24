#!/bin/bash
echo "Starting js_ctf_container..."
# Pull latest just in case? Or just run.
docker run -d -p 9035:9040 --restart always --name js_ctf_container joshbeck2024/ctf_javascript_number_guessing
    echo "js_ctf_container started! Open http://cyberlessons101.com (mapped locally)"
