-- Doors Custom A-90 Spawner
-- Made by @Focuslol666
-- Version: v1.25_Alpha

---=== Set the Config ===---
-- Default
_G.A90Config = {
    Assets = {
        Face = "rbxassetid://102843638335431",
        AngryFace = "rbxassetid://99643781640138",
        StopIcon = "rbxassetid://113969008421594",
        StaticColor = Color3.fromRGB(255, 255, 255),
        HitSound = "rbxassetid://87277735534502",
        SpawnSound = "rbxassetid://4737106301"
    },
    Death = {
        Damage = 40,
        Cause = "LCE eye[A-55]",
        Hints = {"You died to A-55.", "Use the lessons you've learned from A-90!"},
        HintType = "Yellow" -- "Blue" = Guiding, "Yellow" = Curious
    }
}

---=== Apply the Config ===---
loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/RoomsEntities/A-90/A-90_Source.lua"))()
