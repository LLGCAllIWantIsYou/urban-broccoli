local Debris = game:GetService("Debris")
local Lighting = game:GetService("Lighting")

local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,5)
                Reboundcolor.Name = "Warn"
                Reboundcolor.TintColor = Color3.fromRGB(0, 138, 0) Reboundcolor.Saturation = -10 Reboundcolor.Contrast = 5
                game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
local cue1 = Instance.new("Sound")
cue1.Parent = game.Workspace
cue1.Name = "Scream"
cue1.SoundId = "rbxassetid://270145703"
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = cue1
distort.Level = 1
local distort2 = Instance.new("DistortionSoundEffect")
distort2.Parent = cue1
distort2.Level = 1
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Parent = cue1
pitch.Octave = 0.5
local pitch2 = Instance.new("PitchShiftSoundEffect")
pitch2.Parent = cue1
pitch2.Octave = 0.5
local pitch3 = Instance.new("PitchShiftSoundEffect")
pitch3.Parent = cue1
pitch3.Octave = 0.5
cue1.Volume = 0.1
cue1:Play()

local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://270145703"
cue2.Volume = 3


cue2:Play()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

function GetRoom()
    local gruh = workspace.CurrentRooms
    return gruh:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
end

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local runService = game:GetService("RunService")

function LoadCustomInstance(source, parent)
    local model

    while task.wait() and not model do
        if tonumber(source) then
            local success, result = pcall(function()
                return game:GetObjects("rbxassetid://" .. tostring(source))[1]
            end)
            if success and result then
                model = result
            end
        elseif typeof(source) == "string" and source:match("%.rbxm") then
            local success, result = pcall(function()
                local filename = "temp_" .. math.random(100000, 999999) .. ".rbxm"
                local content = game:HttpGet(source)
                if writefile and (getcustomasset or getsynasset) and isfile and delfile then
                    writefile(filename, content)
                    local assetFunc = getcustomasset or getsynasset
                    local obj = game:GetObjects(assetFunc(filename))[1]
                    delfile(filename)
                    return obj
                else
                    warn("File APIs are not available.")
                    return nil
                end
            end)
            if success and result then
                model = result
            end
        else
            break
        end

        if model then
            model.Parent = parent or workspace
            for _, obj in ipairs(model:GetDescendants()) do
                if obj:IsA("Script") or obj:IsA("LocalScript") then
                    obj:Destroy()
                end
            end
            pcall(function()
                model:SetAttribute("LoadedByExecutor", true)
            end)
        end
    end

    return model
end

local model = LoadCustomInstance("https://github.com/Anzor5458/Lce-eye/blob/main/Lceeye.rbxm?raw=true", workspace)
if not model then
    warn("Failed to load the model.")
    return
end

local entity = model:FindFirstChild("RushNew")
if not entity then
    warn("The root part 'RushNew' was not found in the model.")
    return
end

local playSound = entity:FindFirstChild("PlaySound")
if not playSound then
    warn("The 'PlaySound' sound object was not found in 'RushNew'.")
    return
end

local roomEntrance = GetRoom():WaitForChild("RoomEntrance")
entity.CFrame = roomEntrance.CFrame * CFrame.new(0, 5, -15)

workspace.Goldrebound.RushNew.Attachment.PointLight.Enabled = true

local isModelLoaded = true
local canDamage = false
local invincibleTime = 0
local canDamageOnStop = false
local invincibleTimeOnStop = 0

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    local goldrebound = workspace:FindFirstChild("Goldrebound")
    if goldrebound then
        goldrebound:Destroy()
        isModelLoaded = false
        canDamage = false
        playSound:Stop()
    end
end)

runService.RenderStepped:Connect(function()
    if not isModelLoaded then return end
    local currentTime = tick()

    if canDamage and chr.Humanoid.MoveDirection.magnitude > 0 then
        if currentTime - lastDamageTime >= 1 and currentTime > invincibleTime then
            chr.Humanoid.Health = chr.Humanoid.Health - 10
            lastDamageTime = currentTime
        end
    end

    if canDamageOnStop and chr.Humanoid.MoveDirection.magnitude == 0 then
        if currentTime - lastDamageTimeOnStop >= 1 and currentTime > invincibleTimeOnStop then
            chr.Humanoid.Health = chr.Humanoid.Health - 10
            lastDamageTimeOnStop = currentTime
        end
    end
end)

while true do
    if not isModelLoaded then
        task.wait(1)
        continue
    end

    playSound.Looped = true
    workspace.Goldrebound.RushNew.Attachment.PointLight.Color = Color3.fromRGB(255, 0, 0)
    playSound:Play()
    canDamage = true
    invincibleTime = tick() + 0.5
    lastDamageTime = tick()
    task.wait(3)

    playSound.Looped = false
    workspace.Goldrebound.RushNew.Attachment.PointLight.Color = Color3.fromRGB(0, 255, 0)
    playSound:Stop()
    canDamage = false
    task.wait(0.5)
    invincibleTimeOnStop = tick() + 0.5
    canDamageOnStop = true
    lastDamageTimeOnStop = tick()
    task.wait(3)
    canDamageOnStop = false
    task.wait(0.5)
end
