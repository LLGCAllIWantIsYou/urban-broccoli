_G.Image = "rbxassetid://16151245549"
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()

local rooms = workspace.CurrentRooms
local redinfo = TweenInfo.new(5)
local redcolor = {Color = Color3.fromRGB(128, 128, 128)}

for i,v in pairs(rooms:GetDescendants()) do
    if v:IsA("Light") then
        game.TweenService:Create(v, redinfo, redcolor):Play()
        if v.Parent.Name == "LightFixture" then
            game.TweenService:Create(v.Parent, redinfo, redcolor):Play()
        end
    end
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

local sound1 = Instance.new("Sound")
sound1.SoundId = "rbxassetid://9043356686"
sound1.Looped = false
sound1.Parent = workspace
sound1.Volume = 1
sound1:Play()
wait(5)

local playerDied = false
if chr:GetAttribute("Crouching") then
    replicatesignal(game.Players.LocalPlayer.Kill)
    game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Apex[Crouch Early]"
    

    
    playerDied = true
    
end

if not playerDied then
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ImageGui"
    screenGui.ResetOnSpawn = true
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = _G.Image
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = screenGui

    task.delay(3, function()
        if screenGui then
            screenGui:Destroy()
        end
    end)

    wait(3)
    local playerDiedInSecondCheck = false
    if not chr:GetAttribute("Crouching") then
        replicatesignal(game.Players.LocalPlayer.Kill)
        game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Apex"
        
        
        
        playerDiedInSecondCheck = true
    end

    if playerDiedInSecondCheck then
        function GitAud(soundgit,filename)
            SoundName=tostring(SoundName)
            local url=soundgit
            local FileName = filename
            writefile(FileName..".mp3", game:HttpGet(url))
            return (getcustomasset or getsynasset)(FileName..".mp3")
        end

        local sound2 = Instance.new("Sound")
        sound2.SoundId = GitAud("https://github.com/PABMAXICHAC/doors-monsters-models/blob/main/JumpscareNEW_1.mp3?raw=true", "sphhaw")
        sound2.Parent = workspace
        sound2.Volume = 4
        sound2:Play()
    end
end


