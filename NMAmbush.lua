local Workspace = game:GetService("Workspace")

while true do
    if Workspace:FindFirstChild("AmbushMoving") then
        if Workspace.AmbushMoving.RushNew.Attachment:FindFirstChild("ParticleEmitter") then
            Workspace.AmbushMoving.RushNew.Attachment.ParticleEmitter.Texture = "rbxassetid://10888294219"
        end
    end
    wait(0.0005)
end
