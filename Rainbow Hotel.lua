--open door
local workspace = game:GetService("Workspace")

local function getRandomRGBColor()
    local r = math.random(0, 255)
    local g = math.random(0, 255)
    local b = math.random(0, 255)
    return Color3.fromRGB(r, g, b)
end

local function setColorForBaseParts()
    for _, object in ipairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            object.Color = getRandomRGBColor()
        end
    end
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    setColorForBaseParts()
end)
