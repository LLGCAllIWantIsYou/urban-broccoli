---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
    Entity = {
        Name = "Ahead",
        Asset = "https://github.com/Anzor5458/newdoors/raw/refs/heads/main/nightmare.rbxm",
        HeightOffset = 1
    },
    Lights = {
        Flicker = {
            Enabled = false,
            Duration = 6
        },
        Shatter = false,
        Repair = true
    },
    Earthquake = {
        Enabled = true
    },
    CameraShake = {
        Enabled = true,
        Range = 15,
        Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
    },
    Movement = {
        Speed = 200,
        Delay = 3,
        Reversed = false
    },
    Rebounding = {
        Enabled = true,
        Type = "Ambush", -- "Blitz"
        Min = 2,
        Max = 5,
        Delay = 1
    },
    Damage = {
        Enabled = false,
        Range = 25,
        Amount = 100
    },
    Crucifixion = {
        Enabled = true,
        Range = 40,
        Resist = false,
        Break = true
    },
    Death = {
        Type = "Guiding", -- "Curious"
        Hints = {"You died to Ahead", "Its a very fast entity", "Keep your ears open at all times", "To hear it"},
        Cause = ""
    }
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
 game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.Fire.Visible = true
    
    game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.InFiredamp.Visible = true

end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
    if lineOfSight == true then
    
        local player = game.Players.LocalPlayer
local humanoid = player.Character.Humanoid

humanoid.Health -= 1
if humanoid.Health <= 0 then
    game:GetService("ReplicatedStorage").GameStats["Player_" .. player.Name].Total.DeathCause.Value = "Ahead"
end

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
    --From Muhammad old Nightmare(hardcore)mode,i and my friends fixed it.
local TweenService = game:GetService("TweenService")
local LLGC = game.Lighting.MainColorCorrection.Contrast

local Sorry = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(1), {Contrast = 0.45})
local FOCUS = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Contrast = LLGC})

Sorry:Play()
Sorry.Completed:Connect(function() FOCUS:Play() end)
        
end)

entity:SetCallback("OnDespawned", function()
    game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.Fire.Visible = false
    
    game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.InFiredamp.Visible = false

end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth == 0 then
        print("Entity has killed the player")
    else
        print("Entity has damaged the player")
    end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()
