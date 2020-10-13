FROM alpine:3.5

# apk  alpine 
# add 
# apk add--no-cache
# --virtual .build-deps package1 package2 .build-deps12
# ca-certificates curl
RUN apk add --no-cache --virtual .build-deps ca-certificates wget unzip

# Dockerfile  COPY  ADD 
COPY server_config_vmess.json /server_config_vmess.json
COPY server_config_vless.json /server_config_vless.json
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
