# docker based matrix fullstack deployment using ansible
See playbooks, set your variables and enjoy

# Support development
- [paypal](https://paypal.me/kiorky)



# emergency monitoring, put matrix in foreground
Login into matrix container

```
apk add vim
vim /conf/supervisord-matrix.conf
command=/bin/sh -c "while true;do sleep 5000;done"
kill -HUP 1
# in another shell
pkill -f -9 synapse.app.homeserver;/usr/bin/python -m synapse.app.homeserver --config-path /data/homeserver.yaml
```
