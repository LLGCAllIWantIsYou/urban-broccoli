coroutine.wrap(function()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

if game.ReplicatedStorage.GameData.LatestRoom.Value == 50 then

warn("Player reached room 50")

ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
ModuleEvents.flicker(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value], 1000)

end

end)

end)()
