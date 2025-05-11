local function updateDoorSounds(room)
    local door = room.Door.Door
    door.Open.SoundId = "rbxassetid://2803936281"
    door.Unlock.SoundId = "rbxassetid://2803936281"
    door.SlamOpen.SoundId = "rbxassetid://2803936281"
end

updateDoorSounds(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value])

coroutine.wrap(function()
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        wait(0.5)
        updateDoorSounds(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value])
    end)
end)()
