# Docker base image for static doc sites

This base image can be extended as follows to serve a static site behind an enginx basic auth login wall:

```
FROM onesheep/docs
VOLUME /var/www/html
COPY docs/ /var/www/html/
STOPSIGNAL SIGQUIT
ENTRYPOINT ["/run.sh"]
```
