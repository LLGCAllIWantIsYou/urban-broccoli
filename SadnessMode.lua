--Depth
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "It's Cold Here...",
    Desc = "A melancholic world.",
    Reason = "February 29, 2000.",
    Image = "rbxassetid://17651731518"
})
--
--I am so sad
--Hate me
--Sorrow
--Cry for me
print("Loading your trauma and sadness.")
--
if game:GetService("ReplicatedStorage"):FindFirstChild("LOVE") then

    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Please hate me...", true)
    return false

end

local Sadness = Instance.new("Part")

Sadness.Name = "LOVE"

Sadness.Parent = game:GetService("ReplicatedStorage")
--
local folderName = "Sorrow"
local fileName = "TodayIsARainyDay.txt"
local filePath = folderName .. "/" .. fileName

if not isfolder(folderName) then
    makefolder(folderName)
end

local fileContent = "But I've always been there for you."
writefile(filePath, fileContent)

local content = readfile(filePath)
--
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You should die with me.No one gives a fuck about you.",true)

--200MovingGlitch
coroutine.wrap(function()
    while true do
        wait(320)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(2)
loadstring(game:HttpGet('https://pastebin.com/raw/QZM7mnWJ'))()
    end
end)()
--
--Hard Pinkie
coroutine.wrap(function()
    while true do
        wait(120)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1)
loadstring(game:HttpGet('https://pastebin.com/raw/Z1zeP2iD'))()
    end
end)()
--
--A258
coroutine.wrap(function()
    while true do
        wait(99)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/IR_A258.lua'))()
    end
end)()
--
local function updateRoom(room)
    local door = room:FindFirstChild("Door")
    if door then
        local sign = door:FindFirstChild("Sign")
        if sign then
            local stinker = sign:FindFirstChild("Stinker")
            if stinker then
                if stinker:IsA("TextLabel") then
                    stinker.Text = "Ω-" .. stinker.Text
                end

                local highlight = stinker:FindFirstChild("Highlight")
                if highlight and highlight:IsA("GuiObject") then
                    highlight.Visible = false
                end

                local shadow = stinker:FindFirstChild("Shadow")
                if shadow and shadow:IsA("GuiObject") then
                    shadow.Visible = false
                end
            end
        end
    end
end

local function main()
    local latestRoomValue = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
    local room = workspace.CurrentRooms[latestRoomValue]
    updateRoom(room)

    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function(newRoomValue)
        local newRoom = workspace.CurrentRooms[newRoomValue]
        if newRoom then
            updateRoom(newRoom)
        end
    end)
end

main()
--
--Colorful party Rainbow Screech
local function getRandomColor()
    local r = math.random(0, 255)
    local g = math.random(0, 255)
    local b = math.random(0, 255)
    return Color3.fromRGB(r, g, b)
end

local function changeColors(parent)
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("BasePart") then
            child.Color = getRandomColor()
        end
        changeColors(child)
    end
end

local screech = game.ReplicatedStorage.Entities.Screech
changeColors(screech)
--
--Bouns
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Statistics.Frame.DailyStreak.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Statistics.Frame.Weekend.Visible = true
-- fog
local Lighting = game:GetService("Lighting")
Lighting.Ambient = Color3.new(0, 0, 0)
Lighting.Brightness = 0.1
Lighting.FogEnd = 50
Lighting.FogStart = 35
Lighting.FogColor = Color3.new(0, 0, 0)
--
--Rebound Plush toys(I hope you can be happy)--tool from https://github.com/arkanzulfadliputra
math.randomseed(tick())
if math.random(1, 100) == 1 then
    local rebound = game:GetObjects("rbxassetid://12338147479")[1]
    if rebound then
        rebound.Parent = game.Players.LocalPlayer.Backpack
    end
end
--
-- H1ID3
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.HideMonster.Scare.SoundId = "rbxassetid://9126213741"
--Earthquake
coroutine.wrap(function()
    while true do
        wait(280)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Earthquake.lua'))()
  end
end)()
--what
game:GetService("MaterialService").Use2022Materials = false
game:GetService("TextChatService").ChatWindowConfiguration.Enabled = false
--
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
--
--Strange shape
local function updateRoom(room)
    local dropCeilingModel = room.Parts.DropCeiling.Model
    if dropCeilingModel:FindFirstChild("Ceiling") then
        dropCeilingModel.Ceiling.Shape = Enum.PartType.Ball
    end

    if room.Parts:FindFirstChild("Floor") then
        room.Parts.Floor.Shape = Enum.PartType.Wedge
    end

    for _, part in ipairs(room.Parts:GetChildren()) do
        if part.Name == "Wall" and part:IsA("BasePart") then
            part.Shape = Enum.PartType.Cylinder
        end
    end
end

local function main()
    while true do
        local newRoomValue = game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local newRoom = workspace.CurrentRooms[newRoomValue]
        if newRoom then
            updateRoom(newRoom)
        end
    end
end

main()
--
--purple light
local lighting = game:GetService("Lighting")
lighting.Brightness = 1
lighting.ColorShift_Top = Color3.fromRGB(170, 0, 255)
lighting.ColorShift_Bottom = Color3.fromRGB(170, 0, 255)
--
--SpawnLocaltion
local spawnLocation = workspace:FindFirstChild("SpawnLocation")
if spawnLocation then
    spawnLocation.Transparency = 0
    spawnLocation.CanCollide = true
    spawnLocation.CanQuery = true
    spawnLocation.Shape = Enum.PartType.CornerWedge
    spawnLocation.Material = Enum.Material.Brick
    spawnLocation.CanTouch = true
end
--
--Hopeless
while wait(100) do
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "You cannot escape.",
		Text = "Give up struggling.",
		Duration = 5
	})
end
--
-- eyes Scary in one room

coroutine.wrap(function()

    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        wait(1)

        -- black
        game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Eyes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

        if game.Workspace:FindFirstChild("Eyes") then
            -- Color
            game.Workspace.Eyes.Core.Attachment.EyesParticle.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1)),
            })

            -- speed
            game.Workspace.Eyes.Core.Ambience.PlaybackSpeed = 5
        end
    end)

    -- foll
    if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Fools" then
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            wait(1)

            if game.Workspace:FindFirstChild("Eyes") then
                -- jd
                game.Workspace.Eyes.Core.Attachment.EyesParticle.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(0.305881, Color3.new(0, 1, 1)),
                    ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1)),
                })

                -- Speed
                game.Workspace.Eyes.Core.Ambience.PlaybackSpeed = 5
            end
        end)
    end

end)()
--
