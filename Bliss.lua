_G.Image = "rbxassetid://106448471337051"
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()

--white light
local rooms = workspace.CurrentRooms
local redinfo = TweenInfo.new(5)
local redcolor = {Color = Color3.fromRGB(255, 255, 0)}

for i,v in pairs(rooms:GetDescendants()) do
    if v:IsA("Light") then
        game.TweenService:Create(v, redinfo, redcolor):Play()
        if v.Parent.Name == "LightFixture" then
            game.TweenService:Create(v.Parent, redinfo, redcolor):Play()
        end
    end
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://85677794592741"
sound.Looped = false
sound.Parent = workspace
sound.Volume = 1
sound:Play()
wait(5)
if chr:GetAttribute("Crouching") then
    replicatesignal(game.Players.LocalPlayer.Kill)
    game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Bliss[Crouch Early]"
end

wait(1)
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ImageGui"
screenGui.ResetOnSpawn = true
screenGui.Parent = player:WaitForChild("PlayerGui")

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
imageLabel.Position = UDim2.new(0.25, 0, 0.25, 0)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = _G.Image
imageLabel.Parent = screenGui

task.delay(3, function()
    if screenGui then
        screenGui:Destroy()
    end
end)

wait(3)

if not chr:GetAttribute("Crouching") then
    replicatesignal(game.Players.LocalPlayer.Kill)
    game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Bliss"
end

function GitAud(soundgit,filename)
    SoundName=tostring(SoundName)
    local url=soundgit
    local FileName = filename
    writefile(FileName..".mp3", game:HttpGet(url))
    return (getcustomasset or getsynasset)(FileName..".mp3")
end

local sound = Instance.new("Sound")
sound.SoundId = GitAud("https://github.com/PABMAXICHAC/doors-monsters-models/raw/refs/heads/main/bliss_sound.mp3", "spaw")
sound.Parent = workspace
sound.Volume = 4
sound:Play()
