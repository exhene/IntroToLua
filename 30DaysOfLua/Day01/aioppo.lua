-- This is a simple script that creates a computer-controlled opponent for a fighting game.

-- Define a variable for the computer-controlled opponent's character
local opponentCharacter = game:GetService("Workspace").Opponent

-- Define a function that will control the opponent's behavior
local function opponentAI()

    -- Get a reference to the player character
    local playerCharacter = game:GetService("Workspace").Player.Character

    -- Check if the player is within a certain distance
    if (opponentCharacter.HumanoidRootPart.Position - playerCharacter.HumanoidRootPart.Position).Magnitude < 10 then
        
        -- Attack the player
        opponentCharacter.Humanoid:MoveTo(playerCharacter.HumanoidRootPart.Position)
    else
        
        -- Move around randomly
        local randomPosition = Vector3.new(math.random(-50, 50), 0, math.random(-50, 50))
        opponentCharacter.Humanoid:MoveTo(opponentCharacter.HumanoidRootPart.Position + randomPosition)
    end
end

-- Connect the opponentAI function to the Heartbeat event
game:GetService("RunService").Heartbeat:Connect(function()

    -- Check if the opponent's character exists and is alive
    if opponentCharacter and opponentCharacter.Humanoid.Health > 0 then
        
        -- Call the opponentAI function
        opponentAI()
    end
end)
