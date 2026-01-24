#!/bin/bash
echo "Starting magic_method_container..."
# Pull latest just in case? Or just run.
docker run -d -p 3020:3020 --restart always --name magic_method_container joshbeck2024/magic-method-ctf
    echo "magic_method_container started! Open http://cyberlessons101.com (mapped locally)"
