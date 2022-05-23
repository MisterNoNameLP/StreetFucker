local component = require("component")

gpuProxy = loadfile("libs/dbgpu_api.lua")({directDraw = false})

local suc, err = xpcall(loadfile("game.lua"), debug.traceback, true)

if not suc then
    print(err, debug.traceback())
end