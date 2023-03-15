-- Create a function to detect when a player dies
local function onPlayerDied(player)
    -- The player has lost the match, display a game over message and reset the game
    print(player.Name .. " has been defeated!")
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end

-- Connect the onPlayerDied function to the player's character's died event for all players in the game
for _, player in pairs(game.Players:GetPlayers()) do
    player.Character.Humanoid.Died:Connect(function()
        onPlayerDied(player)
    end)
end
