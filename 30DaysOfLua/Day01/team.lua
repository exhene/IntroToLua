-- Divide players into two teams
local redTeam = game:GetService("Teams"):CreateTeam("Red Team")
local blueTeam = game:GetService("Teams"):CreateTeam("Blue Team")

-- Create a function to detect when a team wins
local function onTeamWinning(team)
    print(team.Name .. " team wins!")
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end

-- Connect the onTeamWinning function to the teams' team won event
redTeam.TeamWon:Connect(function()
    onTeamWinning(redTeam)
end)

blueTeam.TeamWon:Connect(function()
    onTeamWinning(blueTeam)
end)
