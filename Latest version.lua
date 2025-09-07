-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdateNotification"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.1, 0)
frame.Position = UDim2.new(0.3, 0, 0.45, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = screenGui

-- Add UICorner for rounded edges
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Create TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Text = "UPDATE INCOMING IN 15 MINUTES :)"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Parent = frame

-- Show for 5 seconds then remove
task.delay(5, function()
    screenGui:Destroy()
end)
