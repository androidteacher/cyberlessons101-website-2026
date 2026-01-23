# CyberLessons101 CTF Website

This repository contains the source code for the CyberLessons101 CTF (Capture The Flag) Index website. The site serves as a hub for launching and managing various cybersecurity training challenges.

## Overview

The website is built using:
- **Astro**: A web framework for building content-driven websites.
- **Tailwind CSS**: For styling and responsive design.
- **Docker**: For containerization and easy deployment.

## Prerequisites

- **Docker**: You need Docker installed on your machine.
- **Git**: To clone this repository (optional if just running the container).

## Docker Instructions

### 1. Quick Start (Recommended)

To run the website immediately using the pre-built image from Docker Hub, run:

```bash
docker run -d --restart always -p 80:80 --name cyberlessons101-website joshbeck2024/cyberlessons101-website
```

Access the website at: `http://localhost`

### 2. Build Locally (Optional)

If you prefer to build the image from the source code:

**Navigate to the root of the repository:**

```bash
docker build -t cyberlessons101-website ./web
```

**Run your locally built container:**

```bash
docker run -d --restart always -p 80:80 --name cyberlessons101-website cyberlessons101-website
```

### 3. Stop and Remove

To stop the website:

```bash
docker stop cyberlessons101-website
docker rm cyberlessons101-website
```

## Development

To run the project in development mode (without Docker):

1.  Navigate to the `web` directory: `cd web`
2.  Install dependencies: `npm install`
3.  Start the dev server: `npm run dev`

## License

Built for educational purposes.
