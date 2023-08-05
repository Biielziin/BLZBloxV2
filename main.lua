local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Biielziin/BLZBloxV2/main/modules/modules.lua'))()

local Window = Rayfield:CreateWindow({
  Name = "AFS - Dupe Script",
  LoadingTitle = "Carregando...",
  LoadingSubtitle = "by @Bielz",
})

-- Windows

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Status: Disabled")

local Button = Tab:CreateButton({
  Name = "Start Data Loss",
  Callback = function()
    local args = {
      [1] = "\0" .. string.rep("B", 4200000)
    }
  
    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("SetTutorialDone"):FireServer(unpack(args))

    Rayfield:Notify({
      Title = "Started Dupe!",
      Content = "The data loss script has been started!",
      Duration = 2,
      Image = 4483362458,
    })

    Label:Set("Status: Enabled")
  end,
})

local Button = Tab:CreateButton({
  Name = "Rejoin",
  Callback = function()
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer
    
    ts:Teleport(game.PlaceId, p)
  end,
})

local Paragraph = Tab:CreateParagraph({Title = "FAQ", Content = "The remote event that will perform the Data Rollback was developed by @tobias020108back. I just made the interface. The script works to reset the dungeon cooldown and to make trades. Does not work for use in the Dupe Machine!"})
