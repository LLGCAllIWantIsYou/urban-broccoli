ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
ModuleEvents.flicker(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value], 35)

local pl = game.Players.LocalPlayer.Character

local a = Instance.new("Animation")
a.AnimationId = "rbxassetid://10096088747"

local humanoid = pl:FindFirstChildOfClass('Humanoid')
local fall = humanoid:LoadAnimation(a)

fall:Play()

local sound = Instance.new("Sound")
sound.Parent = workspace
sound.SoundId = "rbxassetid://933230732"
sound.Volume = 1
sound.Looped = false
sound:Play()

local isPlaying = true

coroutine.wrap(function()
    while isPlaying and sound.IsPlaying do
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
        wait()
    end
end)()

local connection
connection = game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    local humanoid = pl:FindFirstChildOfClass('Humanoid')
    if humanoid then
        humanoid.Health = humanoid.Health - 10
    end
end)

sound.Ended:Connect(function()
    isPlaying = false
    print("Hello...")
    if connection then
        connection:Disconnect()
    end
end)

while isPlaying and sound.IsPlaying do
    wait()
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Something Bad Will Happen Soon...", true)

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local entity = spawner.Create({
    Entity = {
        Name = "Smiley",
        Asset = "https://github.com/PABMAXICHAC/doors-monsters-models/blob/main/Smiley.rbxm?raw=true",
        HeightOffset = 1
    },
    Lights = {
        Flicker = {
            Enabled = false,
            Duration = 5
        },
        Shatter = false,
        Repair = true
    },
    Earthquake = {
        Enabled = false
    },
    CameraShake = {
        Enabled = true,
        Range = 100,
        Values = {1.5, 20, 0.1, 1}
    },
    Movement = {
        Speed = 40,
        Delay = 3,
        Reversed = false
    },
    Rebounding = {
        Enabled = false,
        Type = "Ambush",
        Min = 2,
        Max = 3,
        Delay = 1
    },
    Damage = {
        Enabled = true,
        Range = 25,
        Amount = 125
    },
    Crucifixion = {
        Enabled = false,
        Range = 40,
        Resist = false,
        Break = true
    },
    Death = {
        Type = "Guiding",
        Hints = {"I don't know what you died of.", "You just died.", "I only know that when he first appeared, his speed was very slow.", "After it disappears, if you open the door, it will reappear again."},
        Cause = ""
    }
})

entity:SetCallback("OnSpawned", function()
    local Lighting = game:GetService("Lighting")
    Lighting.FogColor = Color3.fromRGB(255, 255, 0)
    Lighting.FogStart = 10
    Lighting.FogEnd = 50
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: " .. room.Name .. " for the first time")
    else
        print("Entity has entered room: " .. room.Name .. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
    if lineOfSight == true then
        print("Player is looking at entity")
    else
        print("Player view is obstructed by something")
    end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
    else
        print("Entity has finished rebounding")
    end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
end)

entity:SetCallback("OnDespawned", function()
    local Lighting = game:GetService("Lighting")
    Lighting.FogColor = Color3.fromRGB(0, 0, 0)
    Lighting.FogStart = 150
    Lighting.FogEnd = 250
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth == 0 then
        print("Entity has killed the player")
    else
        print("Entity has damaged the player")
    end
end)

entity:Run()
