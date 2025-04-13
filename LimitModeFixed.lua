-- Limit Caption
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Fixed by ASH_Uranium235, LLGC and FOCUS", true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Limit Mode.", true)
wait(5)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Original limit mode by Screech and Jessica.", true)

-- pt
local pt1Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/limita.lua")
local success, result = pcall(function()
    loadstring(pt1Script)()
end)
if not success then
    warn("Failed to load pt1 script: " .. tostring(result))
end


-- pt2
local pt2Script = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/limitb.lua")
local success, result = pcall(function()
    loadstring(pt2Script)()
end)
if not success then
    warn("Failed to load pt2 script: " .. tostring(result))
end

-- Title
local TitleScript = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Flashlight.lua")
local success, result = pcall(function()
    loadstring(TitleScript)()
end)
if not success then
    warn("Failed to load Title script: " .. tostring(result))
end

-- Entity
local EnScript = game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/LimitEntity.lua")
local success, result = pcall(function()
    loadstring(EnScript)()
end)
if not success then
    warn("Failed to load En script: " .. tostring(result))
end
