# Code for DC — New Website

Note: This repo will soon undergo major cleanup.

More documentation forthcoming :)


## Running locally with Docker

To start the site locally with Docker, start by installing and starting the
Docker engine if it isn’t already installed. Then, run:

```bash
docker compose up
```

The site is now accessible at http://localhost:4000. Hit <kbd>CTRL</kbd> + <kbd>C</kbd> to shut down the server.

To rebuild the docker image if the ruby version, gems, or Dockerfile have changed, run `docker compose build`. If you’re experiencing caching problems, try `docker compose build --no-cache`.
