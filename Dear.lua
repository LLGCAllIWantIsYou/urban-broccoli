--a Variant of dread
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- q
local model = Instance.new("Model")
model.Parent = Workspace
model.Name = "Dear"

-- q
local modelId = 12815375701
local modelTemplate = game:GetObjects("rbxassetid://" .. modelId)[1]
for _, child in ipairs(modelTemplate:GetChildren()) do
    local clonedChild = child:Clone()
    clonedChild.Parent = model

    -- no
    if clonedChild:IsA("BasePart") then
        clonedChild.CanCollide = false
    end
end

-- w
local rootPart = character:WaitForChild("HumanoidRootPart")
model:PivotTo(rootPart.CFrame * CFrame.new(0, 0, -5))

-- wait
local roomChanged = false
local roomChangedConnection = ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    roomChanged = true
    -- D
    model:Destroy()
end)

local function checkPlayer()
    local startTime = tick()
    while tick() - startTime < 15 do
        wait()
        if roomChanged then
            break
        end
    end

    if not roomChanged then
        humanoid:TakeDamage(10)
        -- D
        model:Destroy()
    end

    if humanoid.Health <= 0 then
        ReplicatedStorage.GameStats["Player_" .. player.Name].Total.DeathCause.Value = "Dear"
    end
end

checkPlayer()

-- C
roomChangedConnection:Disconnect()
