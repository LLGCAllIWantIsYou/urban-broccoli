coroutine.wrap(function()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

if game.ReplicatedStorage.GameData.LatestRoom.Value == 100 then

warn("Player reached room 100")

require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
ModuleEvents.shatter(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value])

end

end)

end)()
