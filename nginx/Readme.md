## System

- Ubuntu 22.0
- Ram 4GB
- CPU 4Core

## Steps

1. Run `sudo nano /etc/nginx/sites-available/domain.name.full.com`. Configure nginx with `service_sub_domain.supareel.com` and add content of `nginx.conf`
2. install certbot `sudo apt install certbot python3-certbot-nginx -y`
3. Issue certificates `sudo certbot certonly --nginx -d portainer.your_domain.com`
4. Certificate is saved at: `/etc/letsencrypt/live/portainer.your_domain.com/fullchain.pem`
5. Key is saved at: `/etc/letsencrypt/live/portainer.your_domain.com/privkey.pem`

## Useful Links

[Portainer Nginx Setup](https://thriveread.com/portainer-behind-nginx-reverse-proxy-manager-and-https)
