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

-- Spawn increasingly difficult computer-controlled opponents for the player to fight against
for i = 1, 10 do
    local opponent = game.Workspace:FindFirstChild("Opponent")
    opponent:Clone().Parent = game.Workspace
    opponent.Humanoid.MaxHealth = opponent.Humanoid.MaxHealth + (i * 10)
    opponent.Humanoid.Health = opponent.Humanoid.MaxHealth
end
