-- This is a simple script that allows the player to respawn after they die in Roblox.

-- Define a variable for the player character
local character = script.Parent

-- Connect a function to the CharacterAdded event
character.Humanoid.CharacterAdded:Connect(function()

    -- Define a function that will be called when the player dies
    local function onCharacterDied()

        -- Wait a short delay before respawning the player
        wait(5)

        -- Respawn the player at the starting spawn location
        character.HumanoidRootPart.CFrame = game.Workspace.StartSpawn.CFrame
    end

    -- Connect the onCharacterDied function to the Humanoid's Died event
    character.Humanoid.Died:Connect(onCharacterDied)
end)