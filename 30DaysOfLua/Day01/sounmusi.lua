-- Define the sound effects and music
local punchSound = game:GetService("SoundService"):LoadSound("rbxassetid://1234567") -- replace 1234567 with the ID of your punch sound effect
local backgroundMusic = game:GetService("SoundService"):LoadSound("rbxassetid://7654321") -- replace 7654321 with the ID of your background music

-- Play the background music when the game starts
backgroundMusic:Play()

-- Define a function to play the punch sound effect when a player hits another player
local function onPlayerHit(otherPlayer)
    punchSound:Play()
end

-- Connect the onPlayerHit function to the Hit event of each player's Humanoid object
game.Players.PlayerAdded:Connect(function(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Hit:Connect(onPlayerHit)
end)
