-- Create a ScreenGui object to hold the user interface
local gui = Instance.new("ScreenGui")
gui.Name = "FightingGameUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame object to hold the health bars
local healthFrame = Instance.new("Frame")
healthFrame.Name = "HealthFrame"
healthFrame.Size = UDim2.new(0, 200, 0, 20)
healthFrame.Position = UDim2.new(0, 10, 0, 10)
healthFrame.BackgroundColor3 = Color3.new(1, 0, 0)
healthFrame.Parent = gui

-- Create a Frame object to display the player's health
local playerHealth = Instance.new("Frame")
playerHealth.Name = "PlayerHealth"
playerHealth.Size = UDim2.new(1, 0, 1, 0)
playerHealth.BackgroundColor3 = Color3.new(0, 1, 0)
playerHealth.Parent = healthFrame

-- Create a Frame object to hold the player names and scores
local infoFrame = Instance.new("Frame")
infoFrame.Name = "InfoFrame"
infoFrame.Size = UDim2.new(0, 200, 0, 50)
infoFrame.Position = UDim2.new(1, -210, 0, 10)
infoFrame.BackgroundColor3 = Color3.new(0, 0, 0)
infoFrame.BackgroundTransparency = 0.5
infoFrame.Parent = gui

-- Create a TextBox object to display the player's name
local playerName = Instance.new("TextBox")
playerName.Name = "PlayerName"
playerName.Text = game.Players.LocalPlayer.Name
playerName.Size = UDim2.new(1, 0, 0.5, 0)
playerName.Position = UDim2.new(0, 5, 0, 5)
playerName.BackgroundTransparency = 1
playerName.Parent = infoFrame

-- Create a TextBox object to display the player's score
local playerScore = Instance.new("TextBox")
playerScore.Name = "PlayerScore"
playerScore.Text = "Score: 0"
playerScore.Size = UDim2.new(1, 0, 0.5, 0)
playerScore.Position = UDim2.new(0, 5, 0.5, 0)
playerScore.BackgroundTransparency = 1
playerScore.Parent = infoFrame

-- Update the player's health and score as needed
while true do
    playerHealth.Size = UDim2.new(game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth, 0, 1, 0)
    playerScore.Text = "Score: " .. tostring(game.Players.LocalPlayer.leaderstats.Score.Value)
    wait(0.1)
end
