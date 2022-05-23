local component = require("component")
local realGPU = component.gpu

gpuProxy = loadfile("libs/dbgpu_api.lua")({directDraw = false})

local suc, err = xpcall(loadfile("game.lua"), debug.traceback, true)

component.gpu = realGPU

if not suc then
    print(err, debug.traceback())
end