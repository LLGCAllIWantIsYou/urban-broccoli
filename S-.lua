local function updateRoom(room)
    local door = room:FindFirstChild("Door")
    if door then
        local sign = door:FindFirstChild("Sign")
        if sign then
            local stinker = sign:FindFirstChild("Stinker")
            if stinker then
                if stinker:IsA("TextLabel") then
                    stinker.Text = "X-" .. stinker.Text
                end

                local highlight = stinker:FindFirstChild("Highlight")
                if highlight and highlight:IsA("GuiObject") then
                    highlight.Visible = false
                end

                local shadow = stinker:FindFirstChild("Shadow")
                if shadow and shadow:IsA("GuiObject") then
                    shadow.Visible = false
                end
            end
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
