# Prerequisites
* Docker
* Docker compose
* the `unzip` and `curl` commands if you want to use the setup script


# Automatic Craft download and configuration
This will download the latest version
* run `./setup-craft.sh`

# Manual Craft download and configuration
* Download the Craft version you would like to run, place it in a subfolder called `source` relative to the `docker-compose.yml` file.
* Change/update `source/craft/config/db.php` with the following values:
    - server: db
    - user: root
    - password: <empty>
    - database: craft

# How to start docker compose
* `docker-compose up`
* `open http://localhost`

If you decide to customize, the nginx root directory is: `/app/html`


# Docker images used:
* [eriweb/php7-fpm](https://hub.docker.com/r/eriweb/php7-fpm/)
* [eriweb/nginx-craft](https://hub.docker.com/r/eriweb/nginx-craft/)
* [mysql](https://hub.docker.com/_/mysql/)

# Known issues
Docker for Mac has an issue with shared files; rendering file access slow
