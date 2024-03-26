## System

- Ubuntu 22.0
- Ram 4GB
- CPU 4Core

## Steps

1. Run to install nginx `sudo apt install nginx-core`
2. Setup the firewall `sudo ufw enable`
3. Setup `sudo ufw allow 'Nginx Full'` and `sudo ufw allow 'OpenSSH'`
4. Remove default site `sudo unlink /etc/nginx/sites-enabled/default`
5. Run `sudo nano /etc/nginx/sites-available/portainer.supareel.com`. Configure nginx with `service_sub_domain.supareel.com` and add content of `nginx/nginx.conf`
6. install certbot `sudo apt install certbot python3-certbot-nginx -y`
7. Issue certificates `sudo certbot certonly --nginx -d portainer.supareel.com`
8. Certificate is saved at: `/etc/letsencrypt/live/portainer.supareel.com/fullchain.pem`
9. Key is saved at: `/etc/letsencrypt/live/portainer.supareel.com/privkey.pem`

## Useful Links

1. [Portainer Nginx Setup](https://thriveread.com/portainer-behind-nginx-reverse-proxy-manager-and-https)
