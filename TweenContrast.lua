--From Muhammad old Nightmare(hardcore)mode,i and my friends fixed it.
local TweenService = game:GetService("TweenService")
local LLGC = game.Lighting.MainColorCorrection.Contrast

local Sorry = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(1), {Contrast = 0.45})
local FOCUS = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Contrast = LLGC})

Sorry:Play()
Sorry.Completed:Connect(function() FOCUS:Play() end)
