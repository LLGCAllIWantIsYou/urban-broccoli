-- Limit Caption
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Fixed by ASH_Uranium235, LLGC and FOCUS", true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Limit Mode.", true)
wait(5)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Original limit mode by Screech and Jessica.", true)

-- pt
local pt1Script = game:HttpGet("https://pastebin.com/raw/Rtsupndt")
local success, result = pcall(function()
    loadstring(pt1Script)()
end)
if not success then
    warn("Failed to load pt1 script: " .. tostring(result))
end


-- pt2
local pt2Script = game:HttpGet("https://pastebin.com/raw/gbGV06ax")
local success, result = pcall(function()
    loadstring(pt2Script)()
end)
if not success then
    warn("Failed to load pt2 script: " .. tostring(result))
end
