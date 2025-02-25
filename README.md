# Unlighthouse Docker

This is a simple repository (not yet added to dockerhub) to run [unlighthouse](https://github.com/harlan-zw/unlighthouse) using Docker.

## Installation

Run `docker run ghcr.io/indykoning/unlighthouse-docker -e SITE='http://localhost' -p 5678:5678`

or

copy the docker-compose.yml from this repository.
Then add your site to the environment in the docker-compose.yml file.

Run
```bash
docker compose up
```
and after a few seconds you will be able to see the status and results at http://localhost:5678

### Dev installation

Clone this repository
```bash
git clone https://github.com/indykoning/unlighthouse-docker.git
```
Uncomment the `build: .`
then add your site to the environment in the docker-compose.yml file.
Run
```bash
docker compose up
```
and after a few seconds you will be able to see the status and results at http://localhost:5678