local newPart = Instance.new("Part")
newPart.Name = "NewPart"
newPart.Size = Vector3.new(10, 5, 2)
newPart.Position = Vector3.new(0, 5, 0)
newPart.Anchored = true
newPart.Parent = workspace

wait(5)

newPart:Resize(Enum.NormalId.Left, -1)
newPart:Resize(Enum.NormalId.Right, 5)
newPart:Resize(Enum.NormalId.Top, 2)
newPart:Resize(Enum.NormalId.Bottom, 1)
newPart:Resize(Enum.NormalId.Front, 4)
newPart:Resize(Enum.NormalId.Back, 2)
