--Change when u open the door
local materials = {
    Enum.Material.Plastic,
    Enum.Material.SmoothPlastic,
    Enum.Material.Wood,
    Enum.Material.Slate,
    Enum.Material.Concrete,
    Enum.Material.CorrodedMetal,
    Enum.Material.DiamondPlate,
    Enum.Material.Foil,
    Enum.Material.Grass,
    Enum.Material.Ice,
    Enum.Material.Marble,
    Enum.Material.Granite,
    Enum.Material.Brick,
    Enum.Material.Pebble,
    Enum.Material.Sand,
    Enum.Material.Fabric,
    Enum.Material.Metal,
    Enum.Material.WoodPlanks,
    Enum.Material.Neon,
    Enum.Material.Cobblestone,
    Enum.Material.CrackedLava,
    Enum.Material.Glass,
    Enum.Material.Snow,
    Enum.Material.Asphalt,
    Enum.Material.Basalt,
    Enum.Material.Pavement,
    Enum.Material.Sandstone,
    Enum.Material.Limestone,
    Enum.Material.LeafyGrass,
    Enum.Material.Mud,
    Enum.Material.Rock,
    Enum.Material.Salt
}

local function changePartMaterial(part)
    local randomMaterial = materials[math.random(1, #materials)]
    part.Material = randomMaterial
end

local function changeMaterials()
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            changePartMaterial(part)
        end
    end
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
changeMaterials()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(changeMaterials)
