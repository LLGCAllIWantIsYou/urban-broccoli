-- Change door material if in Hotel floor
coroutine.wrap(function()
    if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then
        while true do
            wait(0.0005)
            local latestRoom = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
            if latestRoom:FindFirstChild("Door") and latestRoom.Door:FindFirstChild("Door") then
                latestRoom.Door.Door.Material = "Neon"
                if latestRoom.Door.Door:FindFirstChild("Sign") then
                    latestRoom.Door.Door.Sign.Material = "Neon"
                end
            end
        end
    end
end)()
