local function PumpkinHead()
    while true do
        local Time = math.random(60, 277)
        wait(Time)
        game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.PumpkinVignette.Visible = true
        wait(5)
        game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.PumpkinVignette.Visible = false
    end
end

PumpkinHead()
