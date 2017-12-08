# OpenResty App Template

Let's complete a quick hands-on exercise to install OpenResty App on your machine.

## Demo

* content_by_lua_file

## Depend

* [OpenResty](http://openresty.org/en/installation.html)

## Run

```
script/startup
```

## Test

```
[root@localhost template]# curl -i http://127.0.0.1:8080/
HTTP/1.1 200 OK
Server: openresty/1.13.6.1
Date: Fri, 08 Dec 2017 22:23:13 GMT
Content-Type: text/plain
Transfer-Encoding: chunked
Connection: keep-alive

{"message":"hello, openresty"}
```
