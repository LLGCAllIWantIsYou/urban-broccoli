--HErrorAlttttQw
local shade = game:GetObjects("rbxassetid://117998786918052")[1]
shade.Name = "shadefakelol"
shade.Parent = game.ReplicatedStorage.Entities

if game.ReplicatedStorage.Entities:FindFirstChild("Shade") then
    game.ReplicatedStorage.Entities.Shade.Name = "Shade_Old"
end

shade.Name = "Shade"
