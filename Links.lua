local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Loader

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "Fring Hub",
    LoadingTitle = "fuck you",
    LoadingSubtitle = "by F7#7777 and JAKSKJ#0001",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Kys"
    },
    Discord = {
       Enabled = true,
       Invite = "hmKKjFm5TN", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
	   Title = "FringHub Key",
	   Subtitle = "Key System",
	   Note = "Join the discord (discord.gg/hmKKjFm5TN)",
	   FileName = "Key",
	   SaveKey = false,
	   GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
	   Key = "https://pastebin.com/raw/im637fLi"
	}
 })

local Tab = Window:CreateTab("Script Loader", 4483362458) -- Title, Image


local Label = Tab:CreateLabel("Script is Loading Please Wait.")

local Games = {
    [9049840490] = "https://raw.githubusercontent.com/Vortex123321/Fring-Hub/main/Sonic%20Speed.lua", -- sonic
    [11400511154] = "https://raw.githubusercontent.com/Vortex123321/Fring-Hub/main/Monkey_Tycoon.lua", -- Monkey!
    [10824616460] = "https://raw.githubusercontent.com/NETFLIX89/Sword-Slasher/main/Sword%20Slasher", -- Sword Slasher
    [11939099110] = "https://raw.githubusercontent.com/Vortex123321/Fring-Hub/main/Ski_race.lua",
    [11040063484] = "https://raw.githubusercontent.com/Vortex123321/Fring-Hub/main/Sword_Fighters_sim.lua"


}
if Games[game.PlaceId] then
    loadstring(game:HttpGet(Games[game.PlaceId]))()
else
    Rayfield:Notify({
        Title = "FringHub",
        Content = "Game is Not Supported!",
        Duration = 6.5,
        Image = 4483362458,
        Actions = { -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    print("The user tapped Okay!")
                end
            },
        },
    })
end
