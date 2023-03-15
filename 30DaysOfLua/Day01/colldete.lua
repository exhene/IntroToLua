-- This is a simple script that detects collisions between players and objects.

-- Define a variable for the player character
local character = script.Parent

-- Connect a function to the Touched event of the character's HumanoidRootPart
character.HumanoidRootPart.Touched:Connect(function(part)

    -- Check if the part that was touched is an object that the player should interact with
    if part.Name == "InteractiveObject" then

        -- Handle the collision between the player and the object
        handleCollision(part)
    end
end)

-- Define a function to handle collisions between the player and an object
function handleCollision(object)

    -- Check if the object has a script with a function called "onCollision"
    if object:FindFirstChild("Script") and object.Script:FindFirstChild("onCollision") then

        -- Call the onCollision function with the player character as an argument
        object.Script.onCollision(character)
    end
end
