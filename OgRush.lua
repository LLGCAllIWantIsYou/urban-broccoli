local Workspace = game:GetService("Workspace")

while true do
    if Workspace:FindFirstChild("RushMoving") then
        if Workspace.RushMoving.RushNew.Attachment:FindFirstChild("ParticleEmitter") then
            Workspace.RushMoving.RushNew.Attachment.ParticleEmitter.Texture = "rbxassetid://11221011755"
        end
    end
    wait(0.0005)
end
