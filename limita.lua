--[[]
made by screech and jessica
]]--
local CF = CFrame.new
local nicefrane = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local sussyroom = game:GetObjects("rbxassetid://11626479968")[1]
sussyroom.Parent = workspace
wait(2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
		local camara = game.Workspace.CurrentCamera
		local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
			camara.CFrame = camara.CFrame * shakeCf
		end)
		camShake:Start()
		camShake:ShakeOnce(300,300,0.3,0.5)
		wait(0.5)
game.Players.LocalPlayer.Character:PivotTo(CF(game.Workspace.TestCustomRoom.sussy_part.Position))
game:GetService("Workspace").TestCustomRoom.sussy_part2.Touched:Connect(function()
game.Players.LocalPlayer.Character:PivotTo(CF(0.352394, -0.3796, 3263.22))
game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 147, 15)
game.Lighting.MainColorCorrection.Contrast = 1
camShake:ShakeOnce(300,300,0.3,0.5)
		local TweenService = game:GetService("TweenService")
		local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(math.random(2.5,3)),{TintColor = Color3.fromRGB(255, 255, 255)})
		TW:Play()
wait(0.3)
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(6), {Contrast = 0}):Play()
end)
pcall(function()
spawn(function()
	while wait() do
	local currentroomnumber = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
		if workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door") ~= nil then
		 if workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door") ~= nil then
			workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door").Material = Enum.Material.Slate
			workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door").Color = Color3.new(0.341176, 0.341176, 0.341176)
		    end
		end
	end
end)
spawn(function()
	while wait() do
	local currentroomnumber = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
		if workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door") ~= nil then
		 if workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door") ~= nil then
		 if workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door"):FindFirstChild("Sign") ~= nil then
		 workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door").Sign:Destroy()
		 workspace["CurrentRooms"][currentroomnumber]:FindFirstChild("Door"):FindFirstChild("Door"):FindFirstChild("Sign"):Destroy()
                end
		    end
		end
	end
end)
end)
