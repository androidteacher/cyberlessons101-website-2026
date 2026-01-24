#!/bin/bash
echo "Starting sql-web..."
# Pull latest just in case? Or just run.
docker run -d --name sql-web -p 5000:5000 joshbeck2024/sql-injection-chal-package-search:tagname
    echo "sql-web started! Open http://cyberlessons101.com (mapped locally)"
