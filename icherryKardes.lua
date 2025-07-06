local function setMaterial(part)
    if part:IsA("BasePart") then
        part.Material = Enum.Material.LeafyGrass
    end
end

local function destroyChild(part, childName)
    local child = part:FindFirstChild(childName)
    if child then
        child:Destroy()
    end
end

local function updateRoom(room)
    for _, part in pairs(room.Parts:GetChildren()) do
        if part.Name == "Wall" then
            setMaterial(part)
            destroyChild(part, "Wallpaper")
        elseif part.Name == "Ceiling" then
            setMaterial(part)
        end
    end

    for _, part in pairs(room.Parts.DropCeiling:GetChildren()) do
        setMaterial(part)
    end

    for _, part in pairs(room.Parts.DropCeiling.Model:GetChildren()) do
        setMaterial(part)
    end

    for _, part in pairs(room.Parts:GetDescendants()) do
        if part:IsA("BasePart") then
            setMaterial(part)
        end
    end

    destroyChild(room.Assets, "Rug")
end

local function main()
    local room = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
    updateRoom(workspace.CurrentRooms[room])

    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        room = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
        updateRoom(workspace.CurrentRooms[room])
    end)
end

main()
