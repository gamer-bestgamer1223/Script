local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My first ever GUI", "Ocean")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewButton("Infinite Yield", "Click for a small box on the corner of your screen that you can type commands in", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

MainSection:NewToggle("A lot of health", "Gives you 1 billion health", function(state)
    if state then
        script.Parent.Humanoid.Maxhealth = 1000000000
        script.Parent.Humanoid.Health = 1000000000
    else
        script.Parent.Humanoid.Maxhealth = 100
        script.Parent.Humanoid.Health = 100
    end
end)


--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player Stuff")

PlayerSection:NewSlider("WalkSpeed", "Changes how fast you walk", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Changes how far up you jump", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS and JP", "Resets WalkSpeed And JumpPower back to their default values", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)


-- OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Troller", "You troll the chat by pretending to be someone else and typing a random message in chat", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)