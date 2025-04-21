local function updateRoom(room)
    local dropCeilingModel = room.Parts.DropCeiling.Model
    if dropCeilingModel:FindFirstChild("Ceiling") then
        dropCeilingModel.Ceiling.Shape = Enum.PartType.Ball
    end

    if room.Parts:FindFirstChild("Floor") then
        room.Parts.Floor.Shape = Enum.PartType.Wedge
    end

    for _, part in ipairs(room.Parts:GetChildren()) do
        if part.Name == "Wall" and part:IsA("BasePart") then
            part.Shape = Enum.PartType.Cylinder
        end
    end
end

local function main()
    local latestRoomValue = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
    local room = workspace.CurrentRooms[latestRoomValue]
    updateRoom(room)

    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function(newRoomValue)
        local newRoom = workspace.CurrentRooms[newRoomValue]
        if newRoom then
            updateRoom(newRoom)
        end
    end)
end

main()
