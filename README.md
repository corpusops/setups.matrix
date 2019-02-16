# docker based matrix fullstack deployment using ansible
See playbooks, set your variables and enjoy

# Support development
- Ethereum: ``0xa287d95530ba6dcb6cd59ee7f571c7ebd532814e``
- Bitcoin: ``3GH1S8j68gBceTeEG5r8EJovS3BdUBP2jR``
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
