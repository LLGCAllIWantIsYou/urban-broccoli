ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
ModuleEvents.flicker(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value], 35)

local pl = game.Players.LocalPlayer.Character

local a = Instance.new("Animation")
a.AnimationId = "rbxassetid://10096088747"

local humanoid = pl:FindFirstChildOfClass('Humanoid')
local fall = humanoid:LoadAnimation(a)

fall:Play()

local sound = Instance.new("Sound")
sound.Parent = workspace
sound.SoundId = "rbxassetid://933230732"
sound.Volume = 1
sound.Looped = false
sound:Play()

local isPlaying = true

coroutine.wrap(function()
    while isPlaying and sound.IsPlaying do
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
        wait()
    end
end)()

sound.Ended:Connect(function()
    isPlaying = false
    print("Hello...")
end)
