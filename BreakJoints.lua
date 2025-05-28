local function breakLocalPlayerJoints()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part:BreakJoints()
        end
    end
end

-- breakjoints
breakLocalPlayerJoints()
