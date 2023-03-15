-- Create a timer that counts down from a set amount of time
local timeLeft = 60 -- 60 seconds
while timeLeft > 0 do
    wait(1)
    timeLeft = timeLeft - 1
end

-- The time attack mode is over, display a message and reset the game
print("Time's up!")
game:GetService("TeleportService"):Teleport(game.PlaceId)
