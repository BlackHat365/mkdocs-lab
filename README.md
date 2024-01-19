# Mkdocs Dockerized Website
This repository contains scripts and Dockerfiles for building and serving a Mkdocs website within Docker containers. The setup includes separate Docker images for the "produce" (building the Mkdocs site) and "serve" (serving the built site using Nginx) stages.

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Customization](#customization)
- [GitHub Actions Workflow](#github-actions-workflow)

## Overview

The project structure includes the following key components:

- `Dockerfile.produce`: Dockerfile for building the Mkdocs site.
- `Dockerfile.serve`: Dockerfile for serving the Mkdocs site using Nginx.
- `entrypoint.sh`: Entrypoint script for executing different commands in the Docker containers.
- `nginx.conf`: Nginx configuration file for serving the Mkdocs site.
- `mkdockerize.sh`: Wrapper script for executing containerization of both produce and serve options for Mkdocs.
- Other necessary files for your Mkdocs project.

## Usage

To build and serve the Mkdocs website locally using Docker, follow these steps:

1. Clone the repository: `git clone https://github.com/BlackHat365/mkdocs-lab-repo.git`
2. Navigate to the repository directory: `cd mkdocs-lab`
3. Run the wrapper script: `./mkdockerize.sh`

The wrapper script handles building the Docker images, producing the Mkdocs website, and serving it using Nginx.

## Folder Structure

- `Dockerfile.produce`: Dockerfile for building the Mkdocs site.
- `Dockerfile.serve`: Dockerfile for serving the Mkdocs site using Nginx.
- `entrypoint.sh`: Entrypoint script for executing different commands in the Docker containers.
- `nginx.conf`: Nginx configuration file for serving the Mkdocs site.
- `mkdockerize.sh`: Wrapper script for executing containerization of both produce and serve options for Mkdocs.
- `output/`: Directory where the generated Mkdocs site content is stored.
- `site/`: Mkdocs project directory.
- Other necessary files for your Mkdocs project.

## Customization

- Modify the Mkdocs configuration in the `mkdockerize.sh` script or update the `site/` directory for your specific project needs.
- Customize the Nginx configuration in the `nginx.conf` file according to your requirements.

## GitHub Actions Workflow

The repository includes a GitHub Actions workflow (`main.yml`) that automates the build and test procedure for the Dockerized Mkdocs website. The workflow performs the following steps:
- Builds the Mkdocs produce image.
- Produces the Mkdocs website.
- Builds the Mkdocs serve image.
- Tests the Mkdocs serve container.

To trigger the workflow, push changes to the repository, and it will automatically execute on the configured events.

Feel free to contribute, report issues, or provide feedback!

Aswin Hadinata



