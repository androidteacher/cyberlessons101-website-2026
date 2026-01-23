# CyberLessons101 CTF Website

This repository contains the source code for the CyberLessons101 CTF (Capture The Flag) Index website. The site serves as a hub for launching and managing various cybersecurity training challenges.

## Overview

The website is built using:
- **Astro**: A web framework for building content-driven websites.
- **Tailwind CSS**: For styling and responsive design.
- **Docker**: For containerization and easy deployment.

## Prerequisites

- **Docker**: You need Docker installed on your machine to build and run the container.
- **Git**: To clone this repository.

## Docker Instructions

The website is fully containerized. You can build and run it locally using the following commands.

### 1. Build the Docker Image

Navigate to the root of the repository (where this README is located) and run:

```bash
docker build -t cyberlessons101-website ./web
```

*Note: The `Dockerfile` is located in the `./web` directory, so we specify the build context as `./web`.*

### 2. Run the Container

Once built, you can run the container on port 80:

```bash
docker run -d --restart always -p 80:80 --name cyberlessons101-website cyberlessons101-website
```

Access the website at: `http://localhost`

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
