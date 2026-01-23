
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

    // Start Script - just run the command provided
    // Ensure we handle the "sudo" implicit requirement by the user? 
    // The user said "copy/paste this into you Ubuntu command line". 
    // They will likely need sudo if they are not in docker group.

    const startContent = `#!/bin/bash
echo "Starting ${name}..."
# Pull latest just in case? Or just run.
${item.command}
    echo "${name} started! Open http://cyberlessons101.com (mapped locally)"
`;

    const stopContent = `#!/bin/bash
echo "Stopping ${name}..."
docker rm -f ${name}
echo "${name} stopped."
`;

    fs.writeFileSync(path.join(outDir, `start_${name}.sh`), startContent);
    fs.writeFileSync(path.join(outDir, `stop_${name}.sh`), stopContent);
});

console.log(`Generated shell scripts for ${data.length} items in ${outDir}`);
