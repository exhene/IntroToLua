-- Training mode

-- Define the training target or opponent
local trainingTarget = game.Workspace.TrainingTarget

-- Define a function for the player to interact with the training target
local function train()
    -- Put the code for the training action here
end

-- Connect the train function to the player's input
game.Players.LocalPlayer:GetMouse().Button1Down:Connect(train)