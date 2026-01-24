
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const dataPath = path.join(__dirname, '../src/data/ctf.json');
const outDir = path.join(__dirname, '../public/scripts');

if (!fs.existsSync(outDir)) {
    fs.mkdirSync(outDir, { recursive: true });
}

const data = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));

data.forEach(item => {
    if (item.type !== 'challenge') return;

    // We rely on the container name for the script filename
    const name = item.name;
    if (!name) return;

    // Start Script
    const startContent = `#!/bin/bash
# Auto-generated start script for ${name}

# Function to check if docker command needs sudo
docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    else
        echo "Error: Docker is not running or you don't have permissions."
        echo "Please ensure Docker is installed and running."
        exit 1
    fi
fi

echo "Starting ${name}..."
# Run the command
$docker_cmd run -d \\
    ${item.ports.map(p => `-p ${p}`).join(' ')} \\
    --restart always \\
    --name ${name} \\
    ${item.image}

echo ""
echo "--------------------------------------------------------"
echo "✅ ${name} started successfully!"
echo "--------------------------------------------------------"
${item.ports && item.ports.length > 0 ? `echo "You can access it at: http://localhost:${item.ports[0].split(':')[0]}"` : ''}
echo "--------------------------------------------------------"
`;

    // Stop Script
    const stopContent = `#!/bin/bash
# Auto-generated stop script for ${name}

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ${name}..."
$docker_cmd stop ${name}
$docker_cmd rm ${name}
echo "✅ ${name} stopped and removed."
`;

    fs.writeFileSync(path.join(outDir, `start_${name}.sh`), startContent);
    fs.writeFileSync(path.join(outDir, `stop_${name}.sh`), stopContent);

    // Make them executable
    fs.chmodSync(path.join(outDir, `start_${name}.sh`), '755');
    fs.chmodSync(path.join(outDir, `stop_${name}.sh`), '755');
});

console.log(`Generated shell scripts for ${data.length} items in ${outDir}`);
