--Rebound Plush toys(I hope you can be happy)--tool from https://github.com/arkanzulfadliputra
math.randomseed(tick())
if math.random(1, 100) == 1 then
    local rebound = game:GetObjects("rbxassetid://12338147479")[1]
    if rebound then
        rebound.Parent = game.Players.LocalPlayer.Backpack
    end
end
