--From IR Removed Entity
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local function createModel()
    local model = Instance.new("Model")
    model.Name = "A-258"
    model.Parent = Workspace

    local modelId = 13243160197
    local modelTemplate = game:GetObjects("rbxassetid://" .. modelId)[1]
    for _, child in ipairs(modelTemplate:GetChildren()) do
        child:Clone().Parent = model
    end

    local modelPosition = rootPart.CFrame * CFrame.new(0, 0, -5)
    model:PivotTo(modelPosition)

    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end

    return model
end

local function main()
    local model = createModel()
    delay(10, function()
        model:Destroy()
    end)
end

main()
