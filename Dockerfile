FROM ghcr.io/liquidz/antq:latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
