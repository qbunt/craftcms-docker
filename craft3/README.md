
# Docker compose setup for CraftCMS beta 3

## Prerequisites
* Docker
* Docker compose


## Automatic Craft download and coniguration
This will invoke `composer` and install the latest beta
* run `./setup-craft.sh`

## Manual Craft download and configuration
* run `docker-compose run fpm3 composer create-project craftcms/craft /app -s beta` or change settings as necessary to install CraftCMS
* Change/update `source/.env` with the following values:
    - server: db
    - user: root
    - password: <empty>
    - database: craft

## How to start docker compose
* `docker-compose up`
* `open http://localhost`

If you decide to customize, CraftCMS is located in `/app` within the containers using a local path `./source`


## Docker images used:
* [eriweb/php7-fpm](https://hub.docker.com/r/eriweb/php7-fpm/)
* [eriweb/nginx-craft3](https://hub.docker.com/r/eriweb/nginx-craft3/)
* [mysql](https://hub.docker.com/_/mysql/)

# Known issues
Docker for Mac has an issue with shared files; rendering file access slow