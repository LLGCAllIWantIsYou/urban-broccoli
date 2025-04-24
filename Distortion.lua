local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    for _, item in pairs(Workspace:GetDescendants()) do
        if item:IsA("BasePart") and item.Transparency == 0 then
            item.Transparency = 0.25
        end
    end
end)

