-- eyes Scary in one room

coroutine.wrap(function()

    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        wait(1)

        -- black
        game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Eyes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

        if game.Workspace:FindFirstChild("Eyes") then
            -- Color
            game.Workspace.Eyes.Core.Attachment.EyesParticle.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1)),
            })

            -- speed
            game.Workspace.Eyes.Core.Ambience.PlaybackSpeed = 5
        end
    end)

    -- foll
    if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Fools" then
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            wait(1)

            if game.Workspace:FindFirstChild("Eyes") then
                -- jd
                game.Workspace.Eyes.Core.Attachment.EyesParticle.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1)),
                })

                -- Speed
                game.Workspace.Eyes.Core.Ambience.PlaybackSpeed = 5
            end
        end)
    end

end)()
