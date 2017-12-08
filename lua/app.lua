-- app
local ngx = require "ngx"
local cjson = require "cjson.safe"


local body = {message = "hello, openresty"}

ngx.say(cjson.encode(body))
ngx.exit(ngx.HTTP_OK)
