#!/bin/bash
echo "Starting pizza_planet_xxe..."
# Pull latest just in case? Or just run.
docker run -d -p 9045:80 --name pizza_planet_xxe --restart always joshbeck2024/ctf_local-xxe
    echo "pizza_planet_xxe started! Open http://cyberlessons101.com (mapped locally)"
