FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --no-install-recommends -y postfix libsasl2-modules bsd-mailx && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY postfix.sh /
EXPOSE 25
CMD ["bash", "/postfix.sh"]
