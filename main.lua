local Collapse = loadstring(game:HttpGet('https://raw.githubusercontent.com/Biielziin/BLZBloxV2/main/modules/modules.lua'))()

local Window = Collapse:CreateWindow({
  Name = "Bielz - Collapse",
  LoadingTitle = "Carregando...",
  LoadingSubtitle = "by @Bielz",
})

-- Windows

getgenv().Options = {
  Current = "None",
  V1 = "\192", 
  V2 = string.rep("B", 4200000),
  Undo = "Naruto"
}

local Tab = Window:CreateTab("Menu", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Status: Desabilitado")


local Button = Tab:CreateButton({
  Name = "Começar Dataloss",
  Callback = function()

    game:GetService("ReplicatedStorage").Remote.SetDungeonSetting:FireServer("Theme",  Options[Options.Current])

    Collapse:Notify({
      Title = "🛑 Iniciado!",
      Content = "O script de Dataloss foi iniciado!",
      Duration = 5,
      Image = 4483362458,
    })

    Label:Set("Status: Habilitado")
  end,
})

local D = Y.Dropdown({
  Text = "Versão Dataloss",
  Callback = function(Value)
      Options.Current = Value
  end,
  Options = {
      "V1",
      "V2"
  }
})

local Button = Tab:CreateButton({
  Name = "Relogar",
  Callback = function()
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer
    
    ts:Teleport(game.PlaceId, p)
  end,
})

local Paragraph = Tab:CreateParagraph({Title = "📌 Patch Notes 1.0", Content = "▫ Interface atualizada, Correção dupe após atualização 39.0.0"})
