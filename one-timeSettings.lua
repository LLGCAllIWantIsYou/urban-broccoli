--（Found by LLGC and FOCUS）
local args = {
    [1] = {
        ["VolumeMusicLobby"] = 100,
        ["VolumeMusic"] = 0,
        ["ReduceMotion"] = false,
        ["Sensitivity"] = 50,
        ["HideLayers"] = false,
        ["ToggleCrouch"] = true
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemotesFolder"):WaitForChild("ChangeSettings"):FireServer(unpack(args))
