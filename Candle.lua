local shadow=game:GetObjects("rbxassetid://88396533523807")[1]
shadow.Parent = game.Players.LocalPlayer.Backpack
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
        local function setupCrucifix(tool)
        RightArm.Name = "R_Arm"
        
        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:Stop()
        end
        end
shadow.Equipped:Connect(function()
setupCrucifix(shadow)

local character = game.Players.LocalPlayer.Character

if character then
   
    local humanoid = character:FindFirstChild("Humanoid")
    
    
    if humanoid then
       
        humanoid.WalkSpeed = humanoid.WalkSpeed + 4
    end
end

game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.SpeedBoost.Visible = true

end)
 
shadow.Unequipped:Connect(function()
        RightArm.Name = "RightUpperArm"
        
        RightArm.RightShoulder.C1 = RightC1
local character = game.Players.LocalPlayer.Character

if character then

    local humanoid = character:FindFirstChild("Humanoid")
    
    if humanoid then
    
        humanoid.WalkSpeed = math.max(humanoid.WalkSpeed - 4, 0)
    end
end

game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.SpeedBoost.Visible = false

end)
