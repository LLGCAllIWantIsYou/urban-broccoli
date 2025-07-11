-- RTX OMG

-- script model: https://bit.ly/3uAMBCg

-- raw: https://bit.ly/3B6KOYa

local Vignette = true -- change to false if you don't want a shadow frame

local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorCor = Instance.new("ColorCorrectionEffect")
local SunRays = Instance.new("SunRaysEffect")
local Sky = Instance.new("Sky")
local Atm = Instance.new("Atmosphere")

for i, v in pairs(Lighting:GetChildren()) do
	if v then
		v:Destroy()
	end
end

Bloom.Parent = Lighting
Blur.Parent = Lighting
ColorCor.Parent = Lighting
SunRays.Parent = Lighting
Sky.Parent = Lighting
Atm.Parent = Lighting

if Vignette == true then
	local Gui = Instance.new("ScreenGui")
	Gui.Parent = StarterGui
	Gui.IgnoreGuiInset = true

	local ShadowFrame = Instance.new("ImageLabel")
	ShadowFrame.Parent = Gui
	ShadowFrame.AnchorPoint = Vector2.new(0.5, 1)
	ShadowFrame.Position = UDim2.new(0.5, 0, 1, 0)
	ShadowFrame.Size = UDim2.new(1, 0, 1.05, 0)
	ShadowFrame.BackgroundTransparency = 1
	ShadowFrame.Image = "rbxassetid://4576475446"
	ShadowFrame.ImageTransparency = 0.3
	ShadowFrame.ZIndex = 10
end

Bloom.Intensity = 0.3
Bloom.Size = 10
Bloom.Threshold = 0.8

Blur.Size = 5

ColorCor.Brightness = 0.1
ColorCor.Contrast = 0.5
ColorCor.Saturation = -0.3
ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

SunRays.Intensity = 0.075
SunRays.Spread = 0.727

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
Sky.SunAngularSize = 10

Lighting.Ambient = Color3.fromRGB(2, 2, 2)
Lighting.Brightness = 2.25
Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
Lighting.ColorShift_Top = Color3.fromRGB(0, 0, 0)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
Lighting.ShadowSoftness = 0.2
Lighting.ClockTime = 17
Lighting.GeographicLatitude = 45
Lighting.ExposureCompensation = 0.5

Atm.Density = 0.364
Atm.Offset = 0.556
Atm.Color = Color3.fromRGB(199, 175, 166)
Atm.Decay = Color3.fromRGB(44, 39, 33)
Atm.Glare = 0.36
Atm.Haze = 1.72

print("RTX Loaded")
