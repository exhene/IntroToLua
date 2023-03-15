-- This is an example control system for a Roblox fighting game that includes 6 styles of attacking,
-- 4 styles of blocking, and 12 elemental abilities.

-- Define the keys for each action
local moveForward = Enum.KeyCode.W
local moveBackward = Enum.KeyCode.S
local moveLeft = Enum.KeyCode.A
local moveRight = Enum.KeyCode.D
local jump = Enum.KeyCode.Space
local attack1 = Enum.KeyCode.Q
local attack2 = Enum.KeyCode.E
local attack3 = Enum.KeyCode.R
local attack4 = Enum.KeyCode.F
local attack5 = Enum.KeyCode.Z
local attack6 = Enum.KeyCode.X
local block1 = Enum.KeyCode.LeftShift
local block2 = Enum.KeyCode.C
local block3 = Enum.KeyCode.V
local block4 = Enum.KeyCode.B
local ability1 = Enum.KeyCode.Alpha1
local ability2 = Enum.KeyCode.Alpha2
local ability3 = Enum.KeyCode.Alpha3
local ability4 = Enum.KeyCode.Alpha4
local ability5 = Enum.KeyCode.Alpha5
local ability6 = Enum.KeyCode.Alpha6
local ability7 = Enum.KeyCode.Alpha7
local ability8 = Enum.KeyCode.Alpha8
local ability9 = Enum.KeyCode.Alpha9
local ability10 = Enum.KeyCode.Alpha0
local ability11 = Enum.KeyCode.Minus
local ability12 = Enum.KeyCode.Equals

-- Define a table to store the player's actions
local actions = {
    moveForward = false,
    moveBackward = false,
    moveLeft = false,
    moveRight = false,
    jump = false,
    attack1 = false,
    attack2 = false,
    attack3 = false,
    attack4 = false,
    attack5 = false,
    attack6 = false,
    block1 = false,
    block2 = false,
    block3 = false,
    block4 = false,
    ability1 = false,
    ability2 = false,
    ability3 = false,
    ability4 = false,
    ability5 = false,
    ability6 = false,
    ability7 = false,
    ability8 = false,
    ability9 = false,
    ability10 = false,
    ability11 = false,
    ability12 = false,
}

-- Define a function to update the player's actions based on key presses
local function onKeyPress(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    
    if input.KeyCode == moveForward then
        actions.moveForward = true
    elseif input.KeyCode == moveBackward then
        actions.moveBackward = true
    elseif input.KeyCode == moveLeft then
        actions.moveLeft = true
    elseif input.KeyCode == moveRight then
        actions.moveRight = true
    elseif input.KeyCode == jump then
        actions.jump = true
    elseif input.KeyCode == attack1 then
        actions.attack1 = true
    elseif input.KeyCode == attack2 then
        actions.attack2 = true
    elseif input.KeyCode == attack3 then
        actions.attack3 = true
    elseif input.KeyCode == attack4 then
        actions.attack4 = true
    elseif input.KeyCode == attack5 then
        actions.attack5 = true
    elseif input.KeyCode == attack6 then
        actions.attack6 = true
    elseif input.KeyCode == block1 then
        actions.block1 = true
    elseif input.KeyCode == block2 then
        actions.block2 = true
    elseif input.KeyCode == block3 then
        actions.block3 = true
    elseif input.KeyCode == block4 then
        actions.block4 = true
    elseif input.KeyCode == ability1 then
