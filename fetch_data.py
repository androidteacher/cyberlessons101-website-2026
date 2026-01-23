import re
import json
import subprocess
import time

# List of commands provided by the user
commands_text = """
docker run -d -p 9000:80 --restart always --name flag-b joshbeck2024/ctf-simple-rev-shell
docker run -d -p 9001:80 --restart always --name ctf-mime-challenge-flag-n joshbeck2024/ctf-rev-shell-mime-flag-n
docker run -d -p 9002:80 --restart always --name ctf-base64 joshbeck2024/ctf-base64-rev-shell-flag-k
docker run -d -p 9003:80 --restart always --name ctf-mod-cgi joshbeck2024/ctf-mod-cgi-shell-flag-d
docker run -d -p 9004:5000 --name flag_j --restart always joshbeck2024/ctf-flask-ssti-flag-j
docker run -d -p 9005:80 --restart always --name burp_ctf joshbeck2024/ctf-burp-suite-basic-training
docker run -d -p 9006:80 --name flag5 --restart always joshbeck2024/ctf-sql-inject-flag-5
docker run -d --name ctf-flag-7 --restart always -p 9007:80 joshbeck2024/ctf-phar-out-flag-7
docker run -d -p 9008:80 --restart always --name flag8 joshbeck2024/ctf-git-dumper-training-flag-8
docker run -d -p 9009:80 --name ctf-flag-9 --restart always joshbeck2024/ctf-cookie-brute-force-flag-9
docker run -d -p 9010:22 --network flag-e-net --cap-add=NET_ADMIN --restart always --name flag-e-container joshbeck2024/ctf-tunnel-challenge-flag-e
docker run -d --restart always -p 9011:53/tcp -p 9011:53/udp -p 9012:80 --name flag-f joshbeck2024/ctf-zone-transfer-flag-f
docker run -d -p 9013:80 --restart always --name flag-g joshbeck2024/ctf-base64-encoded-cookie
docker run -d -p 9014:80 -p 9015:22 --cap-add=NET_ADMIN --name flag-h joshbeck2024/ctf-brute-force-login-flag-h
docker run -d -p 9016:5000 --restart always --name flag-i joshbeck2024/ctf-python-post-variables-flag-i
docker run -d -p 9017:80 --restart always --name flag_l_container joshbeck2024/ctf-get-post-training-flag-l
docker run -d -p 9018:80 --restart always --name flag-o joshbeck2024/ctf-weather-api-rce-flag-o
docker run -d -p 9019:80 --restart always --name flag-p joshbeck2024/ctf-php-deserialization-flag-p
docker run -d -p 9020:80 --restart always --name flag-q joshbeck2024/ctf-ssrf-hex-bypass-flag-q
"""

# Regex to extract info
# We need: image name, container name, ports, full command
challenges = []

# Special handling for networked ones or multi-line commands?
# User list looks like single lines.
# One entry is network creation: docker network create ...
# We should probably note that but it's not a challenge image itself, IT's a dependency.
# Actually, the user just listed them. Docker run commands are the main ones.

lines = commands_text.strip().split('\n')

for line in lines:
    line = line.strip()
    if not line: continue
    
    if "docker network create" in line:
        # Just store this as a setup command
        challenges.append({
            "type": "setup",
            "command": line,
            "name": "Network Setup",
            "image": None
        })
        continue

    # Extract image name (usually the last part)
    # But args might be after image? Standard convention is `docker run [opts] image [cmd] [args]`
    # In the user list, the image looks like it's at the end.
    
    parts = line.split(' ')
    image = parts[-1] 
    
    # Extract container name
    name_match = re.search(r'--name\s+([^\s]+)', line)
    container_name = name_match.group(1) if name_match else "unknown"
    
    # Extract ports
    ports_match = re.findall(r'-p\s+([^\s]+)', line)
    ports = ports_match if ports_match else []
    
    challenges.append({
        "type": "challenge",
        "command": line,
        "name": container_name,
        "image": image,
        "ports": ports
    })

# Now fetch data from Docker Hub
results = []

for item in challenges:
    if item['type'] == 'setup':
        results.append(item)
        continue
        
    image_full = item['image']
    if '/' in image_full:
        user, repo = image_full.split('/', 1)
        # Handle cases where tag is present
        if ':' in repo:
            repo = repo.split(':')[0]
    else:
        # Default library?? Unlikely for this user
        continue

    print(f"Fetching info for {user}/{repo}...")
    
    url = f"https://hub.docker.com/v2/repositories/{user}/{repo}/"
    
    try:
        # Use curl to fetch
        cmd = ["curl", "-s", url]
        res = subprocess.run(cmd, capture_output=True, text=True)
        data = json.loads(res.stdout)
        
        full_desc = data.get('full_description', '')
        short_desc = data.get('description', '')
        
        # Extract Solution Guide from description
        # Pattern: Solution Guide: [url]
        # or similar
        solution_match = re.search(r'Solution Guide:\s*(https?://[^\s]+)', full_desc)
        solution_url = solution_match.group(1) if solution_match else None
        
        item['description'] = short_desc
        item['full_description'] = full_desc
        item['solution_url'] = solution_url
        item['hub_url'] = f"https://hub.docker.com/r/{user}/{repo}"
        
    except Exception as e:
        print(f"Error fetching {image_full}: {e}")
        item['error'] = str(e)
    
    results.append(item)
    time.sleep(1) # Be nice to API

# Output to json file
with open('/home/josh/Antigrav_projects/website_test/ctf_data.json', 'w') as f:
    json.dump(results, f, indent=2)

print("Done.")
