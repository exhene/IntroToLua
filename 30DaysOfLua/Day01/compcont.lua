-- Spawn a computer-controlled opponent for the player to fight against
local opponent = game.Workspace:FindFirstChild("Opponent")
opponent:Clone().Parent = game.Workspace

-- Create a function to detect when the player's health reaches 0
local function onPlayerHealthChanged(health)
    if health <= 0 then
        -- The player has lost the match, display a game over message and reset the game
        print("Game Over")
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end

-- Connect the onPlayerHealthChanged function to the player's health changed event
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(onPlayerHealthChanged)
