-- app
local ngx = require "ngx"
local cjson = require "cjson.safe"

local body = "Hello, OpenResty"
ngx.say(body)

return ngx.exit(ngx.HTTP_OK)
