--white light
local rooms = workspace.CurrentRooms
local redinfo = TweenInfo.new(5)
local redcolor = {Color = Color3.fromRGB(255, 255, 255)}

for i,v in pairs(rooms:GetDescendants()) do
	if v:IsA("Light") then
		game.TweenService:Create(v, redinfo, redcolor):Play()
		if v.Parent.Name == "LightFixture" then
			game.TweenService:Create(v.Parent, redinfo, redcolor):Play()
		end
	end
end
--Main Galena
local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
	Entity = {
		Name = "Galena",
		Asset = "https://github.com/Anzor5458/Galens/raw/refs/heads/main/Galena.rbxm",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 1
		},
		Shatter = false,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 500,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 110,
		Delay = 5,
		Reversed = true
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 85
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"It seems that you can't hear the sound anymore.", "Galena deprives your hearing system.", "When it disappears.", "Your vision will briefly blur."},
		Cause = ""
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    
    game:GetService("SoundService").Main.Jamming.Enabled = true
    
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
    
    game:GetService("SoundService").Main.Jamming.Enabled = false
    
end)

entity:SetCallback("OnDespawned", function()
    
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local blur = Instance.new("BlurEffect")
blur.Parent = camera
blur.Size = 0

local function tweenBlur(targetSize, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(blur, tweenInfo, {Size = targetSize})
    tween:Play()
    tween.Completed:Wait()
    blur:Destroy()
end

tweenBlur(20, 2)
wait(5)
tweenBlur(0, 2)

    
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
