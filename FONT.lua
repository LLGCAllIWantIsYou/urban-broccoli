--FONt
local sadness = 12187376545

while true do
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextButton") then
            obj.FontFace = Font.new("rbxassetid://" .. sadness)
        end
    end
    for _, obj in ipairs(game.StarterGui:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextButton") then
            obj.FontFace = Font.new("rbxassetid://" .. sadness)
        end
    end
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        for _, obj in ipairs(player.PlayerGui:GetDescendants()) do
            if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                obj.FontFace = Font.new("rbxassetid://" .. sadness)
            end
        end
    end
end
