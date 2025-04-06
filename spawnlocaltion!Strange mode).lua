local spawnLocation = workspace:FindFirstChild("SpawnLocation")
if spawnLocation then
    spawnLocation.Transparency = 0
    spawnLocation.CanCollide = true
    spawnLocation.CanQuery = true
    spawnLocation.Shape = Enum.PartType.CornerWedge
    spawnLocation.Material = Enum.Material.Ice
    spawnLocation.CanTouch = true
end
