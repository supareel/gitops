## System

- Ubuntu 22.0
- Ram 4GB
- CPU 4Core

## Steps

1. Run to install nginx `sudo apt install nginx-core`
2. Setup the firewall `sudo ufw enable`
3. Setup `sudo ufw allow 'Nginx Full'` and `sudo ufw allow 'OpenSSH'`
4. Remove default site `sudo unlink /etc/nginx/sites-enabled/default`
5. 
6. Run `sudo nano /etc/nginx/sites-available/domain.name.full.com`. Configure nginx with `service_sub_domain.supareel.com` and add content of `nginx/nginx.conf`
7. 
8. install certbot `sudo apt install certbot python3-certbot-nginx -y`
9. Issue certificates `sudo certbot certonly --nginx -d portainer.your_domain.com`
10. Certificate is saved at: `/etc/letsencrypt/live/portainer.your_domain.com/fullchain.pem`
11. Key is saved at: `/etc/letsencrypt/live/portainer.your_domain.com/privkey.pem`

## Useful Links

[Portainer Nginx Setup](https://thriveread.com/portainer-behind-nginx-reverse-proxy-manager-and-https)
