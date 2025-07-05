
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
    while true do
        local success, newRoomValue = pcall(function()
            return game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        end)

        if success then
            pcall(function()
                local newRoom = workspace.CurrentRooms[newRoomValue]
                if newRoom then
                    updateRoom(newRoom)
                end
            end)
        else
            break
        end
    end
end

main()
