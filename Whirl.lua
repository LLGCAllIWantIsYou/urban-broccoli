local workspace = game:GetService("Workspace")
local spawnLocation = workspace:FindFirstChild("SpawnLocation")
local modelId = 16227494357
local whirls = {}
local initialWhirlExists = false

local function createWhirl(position)
    local whirl = game:GetObjects("rbxassetid://" .. modelId)[1]
    whirl.Name = "whirl"
    whirl.Parent = workspace
    whirl:SetPrimaryPartCFrame(CFrame.new(position))
    table.insert(whirls, whirl)
    delay(15, function()
        if whirl and whirl.Parent then
            whirl:Destroy()
        end
    end)
end

local function onTouched(hit)
    if hit and hit.Parent then
        local humanoid = hit.Parent:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

if spawnLocation then
    createWhirl(spawnLocation.Position)
    initialWhirlExists = true
end

local function onSpawnLocationChanged()
    if initialWhirlExists then
        createWhirl(spawnLocation.Position)
    end
end

spawnLocation:GetPropertyChangedSignal("Position"):Connect(onSpawnLocationChanged)

for _, whirl in ipairs(whirls) do
    whirl.Touched:Connect(onTouched)
end

workspace.ChildAdded:Connect(function(child)
    if child.Name == "whirl" then
        child.Touched:Connect(onTouched)
    end
end)
