--Fixed by LLGC(MONSTER)
local static = Instance.new("Sound")
static.SoundId = "rbxassetid://9120425687"
static.Parent = game.ReplicatedStorage
static.Name = "Se"
static.Pitch = 0.6
static.Volume = 1.5
static.TimePosition = 0.2
static:Play()

local GUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local Image = Instance.new("ImageLabel", GUI)

GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI.IgnoreGuiInset = true

Image.BackgroundColor3 = Color3.fromRGB(255,255,255)
Image.BackgroundTransparency = 1
Image.Size = UDim2.new(1,0,1,0)
Image.Image = "rbxassetid://13362464118"
Image.ImageTransparency = 0


wait(1)
game.Players.LocalPlayer.PlayerGui.ScreenGui:Destroy()

if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
    local Hum = game.Players.LocalPlayer.Character.Humanoid
    Hum:TakeDamage(90)

    local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
    blur.Size = 80
    game.SoundService.Main.EqualizerSoundEffect.Enabled = true
    game.SoundService.Main.EqualizerSoundEffect.HighGain = -50
    game.SoundService.Main.EqualizerSoundEffect.LowGain = 10
    game.SoundService.Main.EqualizerSoundEffect.MidGain = -50

    game:GetService("TweenService"):Create(game.SoundService.Main.EqualizerSoundEffect, TweenInfo.new(15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
        LowGain = 0,
        HighGain = 0,
        MidGain = 0,
    }):Play()
    game:GetService("TweenService"):Create(blur, TweenInfo.new(15), {Size = 0}):Play()
    game:GetService("Debris"):AddItem(blur, 15)

    game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Admiration"
    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Admiration.","Try your best to not move at all.","He can sense you with sound."},"Blue")
end
