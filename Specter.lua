workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.ParticleEmitter.Enabled = true

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local MaterialService = game:GetService("MaterialService")
local SoundService = game:GetService("SoundService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local spawnLocation = Workspace:FindFirstChildOfClass("SpawnLocation")

local function createModel()
    local model = Instance.new("Model")
    model.Name = "TemporaryModel"
    model.Parent = Workspace

    local modelTemplate = game:GetObjects("rbxassetid://125103851470017")[1]
    for _, child in ipairs(modelTemplate:GetChildren()) do
        child:Clone().Parent = model
    end

    model:PivotTo(spawnLocation.CFrame)
    return model
end

local function createUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = player.PlayerGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 0.5
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.Parent = screenGui

    return screenGui, frame
end

local function tweenUI(screenGui, frame, transparency, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goals = {BackgroundTransparency = transparency}
    TweenService:Create(frame, tweenInfo, goals):Play()
    wait(duration)
    if transparency == 1 then
        screenGui:Destroy()
    end
end

local function onCollision(part)
    if part.Parent == character then
        replicatesignal(game:GetService("Players").LocalPlayer.Kill)
        ReplicatedStorage.GameStats["Player_" .. player.Name].Total.DeathCause.Value = "Specter"
    end
end

local function main()
    MaterialService.Use2022Materials = false
    SoundService.Main.Volume = 10
    SoundService.Main.Ambience.Volume = 10

    local model = createModel()
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Touched:Connect(onCollision)
        end
    end

    delay(5, function()
        model:Destroy()
        MaterialService.Use2022Materials = true
        SoundService.Main.Volume = 1
        SoundService.Main.Ambience.Volume = 1

        local screenGui, frame = createUI()
        tweenUI(screenGui, frame, 0, 1)  -- Fade in
        wait(5)
        tweenUI(screenGui, frame, 1, 1)  -- Fade out
    end)
end

main()
