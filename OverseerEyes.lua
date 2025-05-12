--getgenv().AutoExecute = true
--Node Fixed
coroutine.wrap(function()
    game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function(v)
        local L = game:GetService("Workspace").CurrentRooms[v].PathfindNodes:Clone()
        L.Parent = game:GetService("Workspace").CurrentRooms[v]
        L.Name = 'Nodes'
    end)
end)()

coroutine.wrap(function()
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    wait(0.5)

    local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
    local eyes = game:GetObjects("rbxassetid://12285389022")[1]
    if eyes then
        game.Workspace.CurrentRooms.ChildAdded:Connect(function()
            game.Workspace:FindFirstChild("Core"):Destroy()
        end)

        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 3, 0)
        eyes.Parent = workspace

        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        while true do
            if not game.Workspace:FindFirstChild("Core") then
                break
            end

            local _, found = workspace.CurrentCamera:WorldToScreenPoint(eyes.Position)
            if not found then
                hum.Health -= 5
                eyes.Attack:Play()

                if hum.Health <= 0 then
                    game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Overseer Eyes"
                    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                        "Looks like those green eyes killed you.",
                        "They are prophets, and they hope you will obey them.",
                        "You need to keep your attention on them all the time..",
                        "When you open the door, they will appear.",
                        "When you open the door again, they will go looking for the next victim.",
                        "By the way, their names are called Overseer Eyes.",
                        "It's not difficult, pay attention next time."
                    }, "Yellow")
                    break
                end
            end
            task.wait(0.25)
        end
    end
end)()
