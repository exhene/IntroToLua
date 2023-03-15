-- Boss battle mode

-- Define the boss character
local boss = game.Workspace.Boss

-- Define a function for the player to fight the boss
local function fightBoss()
    -- Put the code for the boss battle here
end

-- Connect the fightBoss function to the player's input
game.Players.LocalPlayer:GetMouse().Button1Down:Connect(fightBoss)
