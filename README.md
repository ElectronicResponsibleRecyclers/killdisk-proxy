### Killdisk http proxy

This project exists to support http notifications that come from Killdisk.  The ER2 Portal captures these requests to record a log wipe data.
Since Killdisk only supports basic http protocol, this tool serves as a proxy to send the http requests to the portal over https.

#### Prerequisites:
- [Install Docker](https://docs.docker.com/engine/install/ubuntu/) with support for docker-compose

To run this, simple clone the repository and run `docker compose up -d` from the project folder.

Logs for each request will be saved in `logs/proxy.log`.
