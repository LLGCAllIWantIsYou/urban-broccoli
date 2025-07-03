--Anzor5458's UI
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "WarningUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.Position = UDim2.new(0, 0, 0, 0)
bg.BackgroundColor3 = Color3.new(0, 0, 0)
bg.BackgroundTransparency = 0
bg.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0.15, 0)
title.Text = "WARNING"
title.TextColor3 = Color3.new(1, 0, 0)
title.TextScaled = true
title.Font = Enum.Font.Arcade
title.BackgroundTransparency = 1
title.Parent = bg

local desc = Instance.new("TextLabel")
desc.Size = UDim2.new(0.9, 0, 0.4, 0)
desc.Position = UDim2.new(0.05, 0, 0.35, 0)
desc.TextColor3 = Color3.new(1, 1, 1)
desc.TextScaled = true
desc.Font = Enum.Font.SourceSansBold
desc.TextWrapped = true
desc.BackgroundTransparency = 1
desc.Text = [[
UNeasy Mode

- This Mode is creepy.
- Contains a large number of unsolved terrifying secrets.
- If you feel uncomfortable, please exit.

STAY ALERT!
]]
desc.Parent = bg

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.5, 0, 0.15, 0)
button.Position = UDim2.new(0.25, 0, 0.8, 0)
button.Text = "Entering Hell"
button.TextColor3 = Color3.new(1, 1, 1)
button.BackgroundColor3 = Color3.new(0, 0.5, 0)
button.Font = Enum.Font.Arcade
button.TextSize = 24
button.Parent = bg

local function blinkTitle()
    while gui do
        title.TextTransparency = 1
        wait(0.5)
        title.TextTransparency = 0
        wait(0.5)
    end
end
coroutine.wrap(blinkTitle)()

local function blinkButton()
    button.BackgroundTransparency = 0.5
    wait(0.5)
    button.BackgroundTransparency = 0
end

button.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

button.MouseButton1Down:Connect(function()
    coroutine.wrap(blinkButton)()
end)
