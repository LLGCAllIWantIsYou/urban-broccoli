game.ReplicatedStorage.ClientModules.EntityModules.Void.Sound.SoundId =  "rbxassetid://3359047385"

local function runEvery180Seconds()
    local a = require(game.ReplicatedStorage.ClientModules.EntityModules.Void).stuff(
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
    )

    
    if game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.Crouching.Visible then
        
        local damage = math.random(1, 5)
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - damage
    end

  
    if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "VO404ID=!"
    end
end

while true do
    runEvery180Seconds()
    wait(180)
end
