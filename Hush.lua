local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local model = game:GetObjects("rbxassetid://12174018892")[1]
model.Name = "FloatingModel"

local rushNew = model:FindFirstChild("RushNew")
if rushNew then
    model.PrimaryPart = rushNew
else
    error("Model does not contain a 'RushNew' part.")
end

model.Parent = workspace
model:SetPrimaryPartCFrame(head.CFrame * CFrame.new(0, 5, 0))

local function followPlayer()
    while model.Parent == workspace do
        if character and character:FindFirstChild("Head") then
            model:SetPrimaryPartCFrame(character.Head.CFrame * CFrame.new(0, 5, 0))
        end
        task.wait(0.1)
    end
end

coroutine.wrap(followPlayer)()

local crouchingEffect = player.PlayerGui.MainUI.MainFrame.Healthbar.Effects.Crouching
local hideVignette = player.PlayerGui.MainUI.MainFrame.HideVignette

local function damagePlayer()
    while model.Parent == workspace do
        if crouchingEffect.Visible or hideVignette.Visible then
            character.Humanoid.Health = character.Humanoid.Health - 5
        end
        task.wait(1)
    end
end

coroutine.wrap(damagePlayer)()

task.wait(8)
model:Destroy()
