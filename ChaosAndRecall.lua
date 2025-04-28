require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Chaos Mode And Recall Mode Initiated",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("This Are A Mode In The Lowest Stages Of Development",true)
wait(4) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("More Updates Soon!",true)
  
---====== Load achievement giver ======---
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "Doors Chaotic Mode.....?",
    Desc = "Trust Me, This Are ReChaos Mode Not Chaotic",
    Reason = "Thanks For Play My Combination.",
    Image = "rbxassetid://107161730313394"
})

--Cave ambience
local sound = Instance.new("Sound")

sound.SoundId = "rbxassetid://273398061"

sound.Volume = 1

sound.Looped = true

sound:Play()

sound.Parent = workspace

-- new fog
local Lighting = game:GetService("Lighting")
Lighting.Ambient = Color3.new(0, 0, 0)
Lighting.Brightness = 0.1
Lighting.FogEnd = 50
Lighting.FogStart = 35
Lighting.FogColor = Color3.new(0, 0, 0)

-- SCRSHSJRISJDJAJDNSNEEH
game.ReplicatedStorage.Entities.Screech.Top.Eyes.Color = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech.Caught.SoundId = "rbxassetid://7492033495"
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech.Caught.PlaybackSpeed = 1.6
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech.Attack.SoundId = "rbxassetid://8080941676"

-- H1ID3EEE3E3E3E3E
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.HideMonster.Scare.SoundId = "rbxassetid://9126213741"

-- spiderman xd
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.SpiderJumpscare.Scare.SoundId = "rbxassetid://8080941676"

-- Unhinged 
coroutine.wrap(function()
    while true do
        wait(215)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet('https://pastebin.com/raw/bPYb1Kqw'))()
    end
end)()

-- Remnant 
coroutine.wrap(function()
    while true do
        wait(250)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet("https://pastebin.com/raw/gGkR8RMc"))()
    end
end)()

-- Hunter
coroutine.wrap(function()
    while true do
        wait(320)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
        loadstring(game:HttpGet('https://pastebin.com/raw/5vLfqSWa'))()
    end
end)()

-- EA-60 XD
 
coroutine.wrap(function()
 
while true do
 
local sctm = math.random(350,15000)
 
wait(sctm)
 
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption('Secret entity did not dangerous',true)
loadstring(game:HttpGet("https://pastebin.com/raw/Z504KNtF"))()
 
-- Reaper
coroutine.wrap(function()
    while true do
        wait(290)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet("https://pastebin.com/raw/P1nudihg"))()

end

end)()

-- A-15..?
coroutine.wrap(function()
    while true do
        wait(230)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet("https://pastebin.com/raw/PRWXYuTb"))()

end

end)()

-- Depth
coroutine.wrap(function()
    while true do
        wait(180)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet('https://pastefy.app/JztYAL4m/raw'))()

  end

end)()
