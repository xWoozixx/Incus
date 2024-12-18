sudo incus init images:f79f1d1a5f4d nginx -c user.user-data="$(cat nginx-cloud-init.yaml)"
sudo incus start nginx
sudo incus config device add nginx myport proxy listen=tcp:0.0.0.0:80 connect=tcp:127.0.0.1:80
