# Docker base image for gated static site

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is a base Docker image for static doc sites. It is based on the nginx image and adds a basic auth login wall.

## Usage

This base image can be extended as follows to serve a static site behind an enginx basic auth login wall:

```
FROM onesheep/docs
VOLUME /var/www/html
COPY docs/ /var/www/html/
STOPSIGNAL SIGQUIT
ENTRYPOINT ["/run.sh"]
```
