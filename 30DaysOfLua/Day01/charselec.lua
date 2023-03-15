-- This is a simple script for a character selection screen in Roblox with randomization.

-- Define a table of available characters
local characters = {
    "http://www.roblox.com/asset?id=1", -- Insert character asset IDs or URLs here
    "http://www.roblox.com/asset?id=2",
    "http://www.roblox.com/asset?id=3",
}

-- Define a function to randomize the character selection
local function randomizeCharacter()
    local randomIndex = math.random(1, #characters)
    local characterUrl = characters[randomIndex]
    return characterUrl
end

-- Connect a function to the player's spawned event
game.Players.PlayerAdded:Connect(function(player)
    -- Clone the character selection screen template
    local selectionGui = game.ReplicatedStorage.CharacterSelection:Clone()
    selectionGui.Parent = player.PlayerGui

    -- Connect a function to the randomize button's clicked event
    local randomizeButton = selectionGui.Frame.RandomizeButton
    randomizeButton.MouseButton1Click:Connect(function()
        -- Randomize the character selection
        local characterUrl = randomizeCharacter()

        -- Set the character's preview image
        local previewImage = selectionGui.Frame.PreviewImage
        previewImage.Image = characterUrl

        -- Store the selected character in a value for later use
        player:SetAttribute("SelectedCharacter", characterUrl)
    end)

    -- Connect a function to the confirm button's clicked event
    local confirmButton = selectionGui.Frame.ConfirmButton
    confirmButton.MouseButton1Click:Connect(function()
        -- Get the selected character from the value
        local selectedCharacter = player:GetAttribute("SelectedCharacter")

        -- Create the player's character and set its appearance
        local character = game.ReplicatedStorage.CharacterTemplate:Clone()
        character.Parent = game.Workspace
        character.HumanoidRootPart.CFrame = game.Workspace.StartSpawn.CFrame
        character.HumanoidRootPart.Anchored = false
        character.HumanoidRootPart.CanCollide = true
        character.HumanoidRootPart.Transparency = 0

        local appearance = Instance.new("StringValue", character)
        appearance.Name = "Appearance"
        appearance.Value = selectedCharacter

        -- Destroy the character selection screen
        selectionGui:Destroy()
    end)
end)
