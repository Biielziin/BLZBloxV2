local Collapse = loadstring(game:HttpGet('https://raw.githubusercontent.com/Biielziin/BLZBloxV2/main/modules/modules.lua'))()

local Window = Collapse:CreateWindow({
  Name = "Bielz - Collapse",
  LoadingTitle = "Carregando...",
  LoadingSubtitle = "by @Bielz",
})

-- Windows

local Tab = Window:CreateTab("Menu", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Status: Desabilitado")

local Button = Tab:CreateButton({
  Name = "Começar Dataloss",
  Callback = function()
    local args = {
      [1] = "\0" .. string.rep("B", 4200000)
    }
  
    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("SetTutorialDone"):FireServer(unpack(args))

    Collapse:Notify({
      Title = "🛑 Iniciado!",
      Content = "O script de Dataloss foi iniciado!",
      Duration = 5,
      Image = 4483362458,
    })

    Label:Set("Status: Habilitado")
  end,
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