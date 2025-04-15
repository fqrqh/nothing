local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "YBA OP SCRIPT (PAID) " .. Fluent.Version,
    SubTitle = "by fqrqh",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    
}
Tabs.Main:AddButton({
    Title = "AutoQuest",
    Description = "auto quest in order",
    Callback = function()
        Window:Dialog({
            Title = "Are you sure?",
            Content = "Cannot revert ",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

















local Tabs = {
    Main = Window:AddTab({ Title = "Teleport", Icon = "" }),
    
}















local Tabs = {
    Main = Window:AddTab({ Title = "Player", Icon = "" }),
    
}
Tabs.Main:AddButton({
    Title = "Button",
    Description = "Very important button",
    Callback = function()
        local Players = game:GetService("Players")

-- Fonction pour appliquer un highlight
local function ApplyHighlight(Player)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    
    -- Créer un objet Highlight et l'ajouter au personnage
    local Highlight = Instance.new("Highlight")
    Highlight.Parent = Character
    
    -- Définir la couleur du highlight (par exemple, rouge)
    Highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Couleur de fond du highlight (rouge ici)
    Highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- Couleur du contour (blanc ici)
    Highlight.FillTransparency = 0.5  -- Transparence du fond
    Highlight.OutlineTransparency = 0 -- Transparence du contour

    -- Appliquer un highlight à chaque joueur qui rejoint
    Player.CharacterAdded:Connect(function(Char)
        local newHumanoid = Char:WaitForChild("Humanoid")
        local newHighlight = Instance.new("Highlight")
        newHighlight.Parent = Char
        newHighlight.FillColor = Color3.fromRGB(255, 0, 0)
        newHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    end)
end

-- Appliquer le highlight à tous les joueurs dans le jeu
for _, player in ipairs(Players:GetPlayers()) do
    ApplyHighlight(player)
end

-- Appliquer le highlight aux joueurs qui rejoignent après le démarrage
Players.PlayerAdded:Connect(ApplyHighlight)


    
        Window:Dialog({
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})










local Tabs = {
    Main = Window:AddTab({ Title = "ESP", Icon = "" }),
    
}
local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "walkspeed",
    Description = "This is a slider",
    Default = 2,
    Min = 0,
    Max = 200,
    Rounding = 1,
    Callback = function(Value)
        -- Trouve le joueur local
local player = game.Players.LocalPlayer

-- Assure-toi que le personnage est bien chargé
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Change la WalkSpeed du joueur
humanoid.WalkSpeed = 200

        print("Slider was changed:", Value)
    end
})
Tabs.Main:AddButton({
    Title = "Hitbox",
    Description = "Very important button",
    Callback = function()
        -- Trouve le service Players
local Players = game:GetService("Players")

-- Fonction pour appliquer un highlight à un joueur
local function ApplyHighlight(Player)
    local character = Player.Character or Player.CharacterAdded:Wait()
    
    -- Crée un highlight autour du personnage
    local highlight = Instance.new("Highlight")
    highlight.Parent = character
    highlight.FillColor = Color3.fromRGB(0, 255, 0)  -- Couleur de remplissage verte
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)  -- Contour blanc
    highlight.FillTransparency = 0.5  -- Transparence de l'intérieur
    highlight.OutlineTransparency = 0  -- Pas de transparence pour le contour
    highlight.Enabled = true  -- Active le highlight
end

-- Applique les highlights à tous les joueurs présents
for _, player in pairs(Players:GetPlayers()) do
    ApplyHighlight(player)
end

-- Applique le highlight quand un joueur

        Window:Dialog({
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})
Tabs.Main:AddButton({
    Title = "Button",
    Description = "Very important button",
    Callback = function()
        local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer

-- Fonction pour trouver un item dans la map (ici on cherche un modèle appelé "Item")
local function findItem()
    for _, item in ipairs(Workspace:GetChildren()) do
        if item.Name == "Item" and item:IsA("Model") then
            return item
        end
    end
    return nil
end

-- Fonction pour TP le joueur sur l'item
local function teleportToItem()
    local item = findItem()
    if item then
        local itemPosition = item.PrimaryPart.Position
        -- Téléporte le joueur directement à l'item
        player.Character:SetPrimaryPartCFrame(CFrame.new(itemPosition))
    end
end

-- Activation automatique
while true do
    teleportToItem()
    wait(1)  -- Attendre 1 seconde avant de chercher un autre item
end

        Window:Dialog({
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})












local Tabs = {
    Main = Window:AddTab({ Title = "Misc", Icon = "" }),
    
}

