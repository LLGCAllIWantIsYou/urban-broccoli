-- Node Fix

coroutine.wrap(function()

game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function(v)

   L = game:GetService("Workspace").CurrentRooms[v].PathfindNodes:Clone()

L.Parent = game:GetService("Workspace").CurrentRooms[v]

L.Name = 'Nodes'

end)

end)()
-- Victrola
coroutine.wrap(function()
    while true do
        wait(250)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.5)
local omg = Instance.new("Model")
omg.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
omg.Name = "Victrola"

local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes=game:GetObjects("rbxassetid://166258731")[1]

local num=math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
eyes.CFrame=(
	num==0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,5,0)
 
eyes.Parent=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Victrola
eyes.Anchored = false
local pirarie = Instance.new("Sound")
pirarie.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Victrola.Victrola
pirarie.Name = "Music"
pirarie.SoundId = "rbxassetid://1847452015"
pirarie.Pitch = 0
pirarie.Looped = true
pirarie.RollOffMaxDistance = 10000
pirarie.RollOffMinDistance = 10
pirarie:Play()
game:GetService("TweenService"):Create(pirarie,TweenInfo.new(6.7),{Pitch = 0.9}):Play()
    end
end)()
