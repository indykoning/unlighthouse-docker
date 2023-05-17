# Unlighthouse Docker

This is a simple repository (not yet added to dockerhub) to run [unlighthouse](https://github.com/harlan-zw/unlighthouse) using Docker.

## Installation

Clone this repository
```bash
git clone https://github.com/indykoning/unlighthouse-docker.git
```
then add your site to the environment in the docker-compose.yml file.
Run
```bash
docker compose up
```
and after a few seconds you will be able to see the status and results at http://localhost:5678