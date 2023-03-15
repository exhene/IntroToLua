-- Define the player character and starting health
local player = game.Players.LocalPlayer
local startingHealth = 100

-- Create a new variable to store the player's current health
local currentHealth = startingHealth

-- Define a function that reduces the player's health by the specified amount
local function takeDamage(amount)
    currentHealth = currentHealth - amount
    if currentHealth <= 0 then
        -- If the player's health drops to zero or below, reset their health and respawn them
        currentHealth = startingHealth
        player.Character:BreakJoints()
        player:LoadCharacter()
    end
end

-- Connect the takeDamage function to the player's character's Humanoid's TakeDamage event
player.Character.Humanoid.TakeDamage:Connect(takeDamage)
