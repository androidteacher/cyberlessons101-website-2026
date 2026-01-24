import re
import json
import subprocess
import time

# List of commands provided by the user
commands_text = """
docker run -d -p 9031:9031 --name flag-red58 --restart always joshbeck2024/ctf-cve-2023-40028-ghost
docker run -d -p 9030:3000 --name flag-red57 --restart always joshbeck2024/ctf-cve-2025-29927
docker run -d --privileged --shm-size=2g -p 9029:5000 --name red53 --restart always joshbeck2024/ctf-xss-bot-flag-red53
docker run -d -it --rm -p 80:80 -p 1337:1337 joshbeck2024/python_digit_challenge:latest
docker run -d --name sql-web -p 5000:5000 joshbeck2024/sql-injection-chal-package-search:tagname
docker run -d --name notes-api -p 9000:9000 joshbeck2024/notes-api:latest
docker run -d --name xxe-challenge -p 9001:80 joshbeck2024/xxe-challenge:latest
docker run -d --restart unless-stopped -p 9005:80 --name js_flag joshbeck2024/js_flag_1:latest
docker run -d --restart unless-stopped -p 9006:9006 --name zipslip joshbeck2024/zipslip:latest
docker run -d --name numberizer --restart unless-stopped -p 9007:80 joshbeck2024/numberizer:latest
docker run -d --name git-challenge -p 9030:80 --restart always joshbeck2024/git-challenge
docker run -d --name front-end-bypass-challenge -p 9020:80 --restart always joshbeck2024/front-end-bypass-challenge
docker run -d --name robot-ctf -p 9040:80 --restart always joshbeck2024/robots_ctf
docker run -d --name simpleMath -p 9050:9050 --restart always joshbeck2024/simple_math_ctf
docker run -d --name numberizer --restart unless-stopped -p 9007:80 joshbeck2024/numberizer:latest
docker run -d --name front-end-bypass-challenge -p 9020:80 --restart always joshbeck2024/front-end-bypass-challenge
docker run -d -p 9898:80 --restart always --name brute-login joshbeck2024/brute_login_ctf
docker run -d -p 3005:3005 --restart always --name cookie-overflow joshbeck2024/cookie_bot-ctf-challenge
docker run -d -p 3010:3000 --restart always --name ctf-minecraft joshbeck2024/ctf-api-fuzzing
docker run -d -p 3020:3020 --restart always --name magic_method_container joshbeck2024/magic-method-ctf
docker run -d -p 3030:3030 --restart always --name ctf-403 joshbeck2024/403-bypass-ctf
docker run -d -p 9035:9040 --restart always --name js_ctf_container joshbeck2024/ctf_javascript_number_guessing
docker run -d -p 9045:80 --name pizza_planet_xxe --restart always joshbeck2024/ctf_local-xxe
docker run -d -p 9055:80 --restart always --name ctf-revshell joshbeck2024/ctf-rev-shell-mime=type
docker run -p 9066:3000 -d --restart always joshbeck2024/ctf-prototype-pollution
docker run -d -p 9077:21 -p 6200:6200 --name vsftpd-challenge --restart always joshbeck2024/cve-2011-2523
docker run -d -p 9099:80 --restart always --name neg_eq joshbeck2024/ctf_negative_equity
docker run -d -p 5055:3000 --name websockets --restart always joshbeck2024/ctf_websockets_challenge
docker run -d -p 5666:80 --restart always --name ctf-json-post joshbeck2024/ctf-json-post
docker run -d -p 3111:3111 --restart always --name ctf-ascii-rev joshbeck2024/ctf-ascii-rev
docker run -p 3222:5000 --restart always -d joshbeck2024/ctf-wireshark-login
docker run -d -p 3333:3333 --restart always chacha_challenge
docker run -d -p 3444:80 --name ctf-php-filter --restart always joshbeck2024/ctf-php-filter
docker run -d --restart always -p 3555:3555 joshbeck2024/ctf-xss-admin-bot
docker run -d -p 3777:5000 --restart always --name ctf-alphabet-soup joshbeck2024/ctf-alphabet-soup
docker run -d -p 3999:80 --restart always --name ctf-redirection joshbeck2024/ctf-redirection-challenge
docker run -d -p 9028:80 --restart always --name Flag-red51 joshbeck2024/ctf-file-upload-bypass-content-type-flag-red51
docker run -d -p 9027:80 --name red50 --restart always joshbeck2024/ctf_xss_to_null_byte_injection_flag_red50
docker run -d -p 9026:8080 -p 3306:3306 --restart always --name Flag-red47 joshbeck2024/ctf-log4shell-jndi-flag-red47
docker run -d --cap-add=NET_ADMIN -p 5354:53/udp -p 9025:80 --name Flag-red46 --restart always joshbeck2024/ctf-dns-firewall-bypass-flag-red46
docker run -d -p 9024:80 --name Flag-red45 joshbeck2024/ctf-roundcube-1.2.0-flag-red45
docker run -d -p 9023:80 --name Flag-red44 --restart always joshbeck2024/ctf-php-type-juggling-flag-red44
docker run -d -p 9021:80 -p 9022:22 --network flag-red25-net --cap-add=NET_ADMIN --restart always --name Flag_red25 joshbeck2024/ctf-403-bypass-flag-red25
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

# Load existing data to preserve manual edits
CTF_JSON_PATH = '/home/josh/Antigrav_projects/website_test/web/src/data/ctf.json'
try:
    with open(CTF_JSON_PATH, 'r') as f:
        existing_data = json.load(f)
    print(f"Loaded {len(existing_data)} existing entries.")
except FileNotFoundError:
    existing_data = []
    print("No existing data found, starting fresh.")

# Create a map for easy lookup by image
existing_map = {item.get('image'): item for item in existing_data}

# Now fetch data from Docker Hub ONLY if not present
results = []
updates_count = 0
new_count = 0
skipped_count = 0

for item in challenges:
    if item['type'] == 'setup':
        results.append(item)
        continue
        
    image_full = item['image']
    
    # Check if already exists
    if image_full in existing_map:
        # Use existing entry (preserves name, description, solution_url fixes)
        print(f"Skipping {image_full} (already exists)")
        results.append(existing_map[image_full])
        skipped_count += 1
        continue

    if '/' in image_full:
        user, repo = image_full.split('/', 1)
        # Handle cases where tag is present
        if ':' in repo:
            repo = repo.split(':')[0]
    else:
        # Default library?? Unlikely for this user
        continue

    print(f"Fetching info for {user}/{repo}...")
    new_count += 1
    
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
# Write back to both locations to be safe/consistent
with open('/home/josh/Antigrav_projects/website_test/ctf_data.json', 'w') as f:
    json.dump(results, f, indent=2)

with open(CTF_JSON_PATH, 'w') as f:
    json.dump(results, f, indent=2)

print(f"Done. Skipped: {skipped_count}, New: {new_count}. Total: {len(results)}")
