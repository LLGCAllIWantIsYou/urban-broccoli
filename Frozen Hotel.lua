local iceColor = Color3.fromRGB(200, 230, 255)

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    for _, object in ipairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") and not object:GetAttribute("IsIceMaterialSet") then
            object.Material = Enum.Material.Ice
            object.BrickColor = BrickColor.new(iceColor)
            object:SetAttribute("IsIceMaterialSet", true)
        end
    end
end)
