--Main
local MainScript = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Stingray-ModeAnzor5458.lua")
local success, result = pcall(function()
    loadstring(MainScript)()
end)
if not success then
    warn("Failed to load Main script: " .. tostring(result))
end

--D1
local D1Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/old.lua")
local success, result = pcall(function()
    loadstring(D1Script)()
end)
if not success then
    warn("Failed to load D1 script: " .. tostring(result))
end

--D2
local D2Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/spawnlocaltion!Strange%20mode).lua")
local success, result = pcall(function()
    loadstring(D2Script)()
end)
if not success then
    warn("Failed to load D2 script: " .. tostring(result))
end

--D3
local D3Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/DOORS-UnusedContent-pt1.lua")
local success, result = pcall(function()
    loadstring(D3Script)()
end)
if not success then
    warn("Failed to load D3 script: " .. tostring(result))
end

-- D4
local D4Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/Another-You/refs/heads/main/all%20i%20want%20is%20you.lua")
local success, result = pcall(function()
    loadstring(D4Script)()
end)
if not success then
    warn("Failed to load D4 script: " .. tostring(result))
end
