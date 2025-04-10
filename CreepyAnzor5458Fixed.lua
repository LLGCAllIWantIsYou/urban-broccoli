--Main
local kainScript = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/CreepyNew-Anzor5458.lua")
local success, result = pcall(function()
    loadstring(kainScript)()
end)
if not success then
    warn("Failed to load kain script: " .. tostring(result))
end

--D1
local A1Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/idk.lua")
local success, result = pcall(function()
    loadstring(A1Script)()
end)
if not success then
    warn("Failed to load A1 script: " .. tostring(result))
end
