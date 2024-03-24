# Download the configuration files.
export ZITADEL_CONFIG_FILES=https://raw.githubusercontent.com/zitadel/zitadel/main/docs/docs/self-hosting/manage/reverseproxy
wget ${ZITADEL_CONFIG_FILES}/docker-compose.yaml -O docker-compose-base.yaml
wget ${ZITADEL_CONFIG_FILES}/nginx/docker-compose.yaml -O docker-compose-nginx.yaml
wget ${ZITADEL_CONFIG_FILES}/nginx/nginx-enabled-tls.conf -O nginx-enabled-tls.conf

# Generate a self signed certificate and key.
openssl req -x509 -batch -subj "/CN=127.0.0.1.sslip.io/O=ZITADEL Demo" -nodes -newkey rsa:2048 -keyout ./selfsigned.key -out ./selfsigned.crt

# Run the database, ZITADEL and NGINX.
docker compose --file docker-compose-base.yaml --file docker-compose-nginx.yaml up --detach proxy-enabled-tls

# Test that gRPC and HTTP APIs work. Empty brackets like {} means success.
sleep 3
grpcurl --insecure 127.0.0.1.sslip.io:443 zitadel.admin.v1.AdminService/Healthz
curl --insecure https://127.0.0.1.sslip.io:443/admin/v1/healthz