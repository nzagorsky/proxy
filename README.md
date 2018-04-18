GoProxy
=======

Simple proxy in small container, built from scratch.

```
docker run -d --name proxy -p 1080:1080 -e PROXY_USER=$PROXY_USER -e PROXY_PASSWORD=$PROXY_PASSWORD toltenos/proxy
```

Test
====

This should show something, but not your IP.
```
curl --socks5 $PROXY_PATH:1080 -U $PROXY_USER:$PROXY_PASSWORD https://ident.me
```
