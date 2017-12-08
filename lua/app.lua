-- app
local ngx = require "ngx"
local cjson = require "cjson.safe"

local body = {message = "Hello, OpenResty"}
ngx.say(cjson.encode(body))

return ngx.exit(ngx.HTTP_OK)
