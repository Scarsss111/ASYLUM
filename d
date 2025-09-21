--- SERVICES

local Meow_v_0_1 = Instance.new("ScreenGui")
Meow_v_0_1.Name = "Meow v.0.1"
Meow_v_0_1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Meow_v_0_1.Parent = game.Players.LocalPlayer.PlayerGui
Meow_v_0_1.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 461, 0, 274)
Main.Position = UDim2.new(0.15, 0, 0.23, 0)
Main.BorderSizePixel = 0
Main.BackgroundTransparency = 0.7
Main.BackgroundColor3 = Color3.new(0.27, 0.29, 0.23)
Main.Parent = Meow_v_0_1

local UICorner_Main = Instance.new("UICorner")
UICorner_Main.Parent = Main

local Catagory = Instance.new("ScrollingFrame")
Catagory.Name = "Catagory"
Catagory.Active = true
Catagory.BorderSizePixel = 0
Catagory.BackgroundColor3 = Color3.new(0, 0, 0)
Catagory.Size = UDim2.new(0, 141, 0, 260)
Catagory.ScrollBarImageColor3 = Color3.new(0, 0, 0)
Catagory.BackgroundTransparency = 0.1
Catagory.Position = UDim2.new(0.02, 0, 0.02, 0)
Catagory.Parent = Main

local UICorner_Catagory = Instance.new("UICorner")
UICorner_Catagory.Parent = Catagory

local Infobutton = Instance.new("TextButton")
Infobutton.Name = "Infobutton"
Infobutton.TextWrapped = true
Infobutton.BorderSizePixel = 0
Infobutton.TextScaled = true
Infobutton.BackgroundColor3 = Color3.new(1, 1, 1)
Infobutton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Infobutton.Size = UDim2.new(0, 104, 0, 34)
Infobutton.TextColor3 = Color3.new(0, 0, 0)
Infobutton.Text = "INFO"
Infobutton.Position = UDim2.new(0.13, 0, 0.29, 0)
Infobutton.Parent = Catagory

local UICorner_InfoBtn = Instance.new("UICorner")
UICorner_InfoBtn.Parent = Infobutton

local ASYLUMBUTTON = Instance.new("TextButton")
ASYLUMBUTTON.Name = "ASYLUMBUTTON"
ASYLUMBUTTON.TextWrapped = true
ASYLUMBUTTON.BorderSizePixel = 0
ASYLUMBUTTON.BackgroundColor3 = Color3.new(1, 1, 1)
ASYLUMBUTTON.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ASYLUMBUTTON.TextSize = 35
ASYLUMBUTTON.Size = UDim2.new(0, 104, 0, 42)
ASYLUMBUTTON.TextColor3 = Color3.new(0, 0, 0)
ASYLUMBUTTON.Text = "Asylum"
ASYLUMBUTTON.Position = UDim2.new(0.13, 0, 0.06, 0)
ASYLUMBUTTON.Parent = Catagory

local UICorner_AsylumBtn = Instance.new("UICorner")
UICorner_AsylumBtn.Parent = ASYLUMBUTTON

local Farmbutton = Instance.new("TextButton")
Farmbutton.Name = "Farmbutton"
Farmbutton.TextWrapped = true
Farmbutton.BorderSizePixel = 0
Farmbutton.RichText = true
Farmbutton.BackgroundColor3 = Color3.new(1, 1, 1)
Farmbutton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Farmbutton.TextSize = 35
Farmbutton.Size = UDim2.new(0, 104, 0, 42)
Farmbutton.TextColor3 = Color3.new(0, 0, 0)
Farmbutton.Text = "Farm 🧑‍🌾"
Farmbutton.Position = UDim2.new(0.12, 0, 0.17, 0)
Farmbutton.Parent = Catagory

local UICorner_FarmBtn = Instance.new("UICorner")
UICorner_FarmBtn.Parent = Farmbutton

local INFO = Instance.new("Frame")
INFO.Name = "INFO"
INFO.Size = UDim2.new(0.00, 302.00, 0.00, 260.00)
INFO.Position = UDim2.new(0.33, 0.00, 0.02, 0.00)
INFO.ZIndex = 3
INFO.BackgroundColor3 = Color3.new(0.00, 0.00, 0.00)
INFO.Parent = Main

local UICorner = Instance.new("UICorner")
UICorner.Parent = INFO

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.ZIndex = 3
TextLabel.BorderSizePixel = 0
TextLabel.RichText = true
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.Size = UDim2.new(1.00, 0.00, 0.16, 0.00)
TextLabel.Text = "THE UPDATE!"
TextLabel.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.00, 0.00, 0.00, 0.00)
TextLabel.Parent = INFO

local UICorner_1 = Instance.new("UICorner")
UICorner_1.Parent = TextLabel

local Fixedauto = Instance.new("TextLabel")
Fixedauto.Name = "Fixedauto"
Fixedauto.TextWrapped = true
Fixedauto.BorderSizePixel = 0
Fixedauto.RichText = true
Fixedauto.TextScaled = true
Fixedauto.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
Fixedauto.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Fixedauto.TextXAlignment = Enum.TextXAlignment.Left
Fixedauto.TextSize = 14
Fixedauto.Size = UDim2.new(0.00, 263.00, 0.00, 50.00)
Fixedauto.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Fixedauto.Text = "-- Fixed auto escape farm."
Fixedauto.TextColor3 = Color3.new(1.00, 1.00, 1.00)
Fixedauto.BackgroundTransparency = 1
Fixedauto.Position = UDim2.new(0.01, 0.00, 0.16, 0.00)
Fixedauto.Parent = INFO

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.TextWrapped = true
TextLabel_1.BorderSizePixel = 0
TextLabel_1.RichText = true
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextSize = 25
TextLabel_1.Size = UDim2.new(0.00, 277.00, 0.00, 50.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "-- Revamped Auto farm to serverhop to prevent anti cheat"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.01, 0.00, 0.34, 0.00)
TextLabel_1.Parent = INFO

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.TextWrapped = true
TextLabel_1.BorderSizePixel = 0
TextLabel_1.RichText = true
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextSize = 25
TextLabel_1.Size = UDim2.new(0.00, 264.00, 0.00, 50.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "-- Changed Noclip -> Teleport"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.00, 0.00, 0.52, 0.00)
TextLabel_1.Parent = INFO

local Cry = Instance.new("TextLabel")
Cry.Name = "Cry"
Cry.TextWrapped = true
Cry.BorderSizePixel = 0
Cry.RichText = true
Cry.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
Cry.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Cry.TextXAlignment = Enum.TextXAlignment.Left
Cry.TextSize = 25
Cry.Size = UDim2.new(0.00, 264.00, 0.00, 50.00)
Cry.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Cry.Text = "-- Noclip added (actual noclip this time  😭 )"
Cry.TextColor3 = Color3.new(1.00, 1.00, 1.00)
Cry.BackgroundTransparency = 1
Cry.Position = UDim2.new(0.01, 0.00, 0.68, 0.00)
Cry.Parent = INFO


local ASYLUM = Instance.new("ScrollingFrame")
ASYLUM.Name = "ASYLUM"
ASYLUM.Active = true
ASYLUM.ZIndex = 2
ASYLUM.BorderSizePixel = 0
ASYLUM.BackgroundColor3 = Color3.new(0, 0, 0)
ASYLUM.Size = UDim2.new(0, 302, 0, 259)
ASYLUM.ScrollBarImageColor3 = Color3.new(0, 0, 0)
ASYLUM.BorderColor3 = Color3.new(0, 0, 0)
ASYLUM.BackgroundTransparency = 0.2
ASYLUM.Position = UDim2.new(0.33, 0, 0.02, 0)
ASYLUM.Parent = Main
ASYLUM.Visible = false

local UICorner_Asylum = Instance.new("UICorner")
UICorner_Asylum.Parent = ASYLUM

local NOCOOLDOWNMOP = Instance.new("TextButton")
NOCOOLDOWNMOP.Name = "NOCOOLDOWNMOP"
NOCOOLDOWNMOP.TextWrapped = true
NOCOOLDOWNMOP.BorderSizePixel = 0
NOCOOLDOWNMOP.TextScaled = true
NOCOOLDOWNMOP.BackgroundColor3 = Color3.new(1, 1, 1)
NOCOOLDOWNMOP.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
NOCOOLDOWNMOP.Size = UDim2.new(0, 161, 0, 34)
NOCOOLDOWNMOP.TextColor3 = Color3.new(0, 0, 0)
NOCOOLDOWNMOP.Text = "NOCDONMOP"
NOCOOLDOWNMOP.Position = UDim2.new(0.14, 0, 0.22, 0)
NOCOOLDOWNMOP.Parent = ASYLUM

local NOCLIPBUTTON = Instance.new("TextButton")
NOCLIPBUTTON.Name = "Teleport"
NOCLIPBUTTON.TextWrapped = true
NOCLIPBUTTON.ZIndex = 49
NOCLIPBUTTON.BorderSizePixel = 0
NOCLIPBUTTON.TextScaled = true
NOCLIPBUTTON.BackgroundColor3 = Color3.new(1, 1, 1)
NOCLIPBUTTON.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
NOCLIPBUTTON.Size = UDim2.new(0, 161, 0, 34)
NOCLIPBUTTON.TextColor3 = Color3.new(0, 0, 0)
NOCLIPBUTTON.Text = "Teleport"
NOCLIPBUTTON.Position = UDim2.new(0.14, 0, 0.13, 0)
NOCLIPBUTTON.Parent = ASYLUM

local NOCLIP = Instance.new("TextLabel")
NOCLIP.Name = "NOCLIP"
NOCLIP.TextWrapped = true
NOCLIP.TextScaled = true
NOCLIP.BackgroundColor3 = Color3.new(0, 0, 0)
NOCLIP.Size = UDim2.new(0, 170, 0, 116)
NOCLIP.Text = "Press N to toggle NoClip, Shift for Speed, Q/E to fly."
NOCLIP.TextColor3 = Color3.new(1, 1, 1)
NOCLIP.BackgroundTransparency = 0.2
NOCLIP.Position = UDim2.new(0, 0, 0, 34)
NOCLIP.Visible = false
NOCLIP.Parent = NOCLIPBUTTON

local UICorner_ClipBtn = Instance.new("UICorner")
UICorner_ClipBtn.Parent = NOCLIPBUTTON

local TPBUTTON = Instance.new("TextButton")
TPBUTTON.Name = "TPBUTTON"
TPBUTTON.TextWrapped = true
TPBUTTON.ZIndex = 50
TPBUTTON.BorderSizePixel = 0
TPBUTTON.TextScaled = true
TPBUTTON.BackgroundColor3 = Color3.new(1, 1, 1)
TPBUTTON.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TPBUTTON.Size = UDim2.new(0, 161, 0, 34)
TPBUTTON.TextColor3 = Color3.new(0, 0, 0)
TPBUTTON.Text = "TP ESCAPE"
TPBUTTON.Position = UDim2.new(0.14, 0, 0.05, 0)
TPBUTTON.Parent = ASYLUM

local TP = Instance.new("TextLabel")
TP.Name = "TP"
TP.TextWrapped = true
TP.RichText = true
TP.TextScaled = true
TP.BackgroundColor3 = Color3.new(0, 0, 0)
TP.Size = UDim2.new(0, 173, 0, 132)
TP.Text = "Click this and you'll be tped to exit. <font color='rgb(255,0,0)'>You must wait 120 second for escape cooldown!</font>"
TP.TextColor3 = Color3.new(1, 1, 1)
TP.BackgroundTransparency = 0.2
TP.Position = UDim2.new(0, 0, 0, 34)
TP.Visible = false
TP.Parent = TPBUTTON

local UICorner_TPBtn = Instance.new("UICorner")
UICorner_TPBtn.Parent = TPBUTTON

local FARM = Instance.new("ScrollingFrame")
FARM.Name = "FARM"
FARM.Active = true
FARM.ZIndex = 2
FARM.BorderSizePixel = 0
FARM.BackgroundColor3 = Color3.new(0, 0, 0)
FARM.Size = UDim2.new(0, 302, 0, 259)
FARM.ScrollBarImageColor3 = Color3.new(0, 0, 0)
FARM.BorderColor3 = Color3.new(0, 0, 0)
FARM.BackgroundTransparency = 0.2
FARM.Position = UDim2.new(0.33, 0, 0.02, 0)
FARM.Parent = Main
FARM.Visible = false

local UICorner_Farm = Instance.new("UICorner")
UICorner_Farm.Parent = FARM

local AUTOESCAPE = Instance.new("TextButton")
AUTOESCAPE.Name = "AUTOESCAPE"
AUTOESCAPE.TextWrapped = true
AUTOESCAPE.BorderSizePixel = 0
AUTOESCAPE.TextScaled = true
AUTOESCAPE.BackgroundColor3 = Color3.new(1, 1, 1)
AUTOESCAPE.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AUTOESCAPE.Size = UDim2.new(0, 109, 0, 34)
AUTOESCAPE.TextColor3 = Color3.new(0, 0, 0)
AUTOESCAPE.Text = "AUTO ESCAPE"
AUTOESCAPE.Position = UDim2.new(0.04, 0, 0.13, 0)
AUTOESCAPE.Parent = FARM

local AutoOnorOff = Instance.new("TextLabel")
AutoOnorOff.Name = "AutoOnorOff"
AutoOnorOff.BorderSizePixel = 0
AutoOnorOff.BackgroundColor3 = Color3.new(1, 1, 1)
AutoOnorOff.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AutoOnorOff.TextSize = 25
AutoOnorOff.Size = UDim2.new(0, 200, 0, 50)
AutoOnorOff.BorderColor3 = Color3.new(0, 0, 0)
AutoOnorOff.Text = "ON "
AutoOnorOff.TextColor3 = Color3.new(1, 1, 1)
AutoOnorOff.BackgroundTransparency = 1
AutoOnorOff.Position = UDim2.new(-0.42, 0, 0.68, 0)
AutoOnorOff.Parent = AUTOESCAPE

local UICorner_AutoEscape = Instance.new("UICorner")
UICorner_AutoEscape.Parent = AUTOESCAPE

local WARNING = Instance.new("TextLabel")
WARNING.Name = "WARNING"
WARNING.TextWrapped = true
WARNING.ZIndex = 5
WARNING.BorderSizePixel = 0
WARNING.TextScaled = true
WARNING.BackgroundColor3 = Color3.new(0, 0, 0)
WARNING.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
WARNING.TextStrokeColor3 = Color3.new(1, 1, 1)
WARNING.TextTransparency = 1
WARNING.TextSize = 80
WARNING.Size = UDim2.new(0, 140, 0, 140)
WARNING.BorderColor3 = Color3.new(0, 0, 0)
WARNING.Text = "WAIT FOR 30!"
WARNING.TextColor3 = Color3.new(1, 1, 1)
WARNING.BackgroundTransparency = 0.2
WARNING.Position = UDim2.new(-0.06, 0, -1.09, 0)
WARNING.Visible = false
WARNING.Parent = AUTOESCAPE

local AUTOCLEAN = Instance.new("TextButton")
AUTOCLEAN.Name = "AUTOCLEAN"
AUTOCLEAN.TextWrapped = true
AUTOCLEAN.BorderSizePixel = 0
AUTOCLEAN.TextScaled = true
AUTOCLEAN.BackgroundColor3 = Color3.new(1, 1, 1)
AUTOCLEAN.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AUTOCLEAN.Size = UDim2.new(0, 109, 0, 34)
AUTOCLEAN.TextColor3 = Color3.new(0, 0, 0)
AUTOCLEAN.Text = "AUTO CLEAN"
AUTOCLEAN.Position = UDim2.new(0.50, 0, 0.13, 0)
AUTOCLEAN.Parent = FARM

local UICorner_AutoClean = Instance.new("UICorner")
UICorner_AutoClean.Parent = AUTOCLEAN

local MOP2 = Instance.new("TextButton")
MOP2.Name = "MOP2"
MOP2.TextWrapped = true
MOP2.BorderSizePixel = 0
MOP2.TextScaled = true
MOP2.BackgroundColor3 = Color3.new(1, 1, 1)
MOP2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
MOP2.Size = UDim2.new(0, 161, 0, 34)
MOP2.TextColor3 = Color3.new(0, 0, 0)
MOP2.Text = "NOCDONMOP"
MOP2.Position = UDim2.new(0.14, 0, 0.22, 0)
MOP2.Parent = ASYLUM
MOP2.ZIndex = 48

local NOMOPCOOLDOWN = Instance.new("TextLabel")
NOMOPCOOLDOWN.Name = "NOMOPCOOLDOWN"
NOMOPCOOLDOWN.TextWrapped = true
NOMOPCOOLDOWN.ZIndex = 10
NOMOPCOOLDOWN.RichText = true
NOMOPCOOLDOWN.TextScaled = true
NOMOPCOOLDOWN.BackgroundColor3 = Color3.new(0, 0, 0)
NOMOPCOOLDOWN.Size = UDim2.new(0, 160, 0, 104)
NOMOPCOOLDOWN.Text = "Stand near a spill and it'll auto clean it for you instant  <font color='rgb(47, 255, 0)'>(no cooldown!!)</font>"
NOMOPCOOLDOWN.TextColor3 = Color3.new(1, 1, 1)
NOMOPCOOLDOWN.BackgroundTransparency = 0.2
NOMOPCOOLDOWN.Position = UDim2.new(0, 0, 0, 34)
NOMOPCOOLDOWN.Parent = MOP2
NOMOPCOOLDOWN.Visible = false

local AutoCleanLabel = Instance.new("TextLabel")
AutoCleanLabel.BorderSizePixel = 0
AutoCleanLabel.BackgroundColor3 = Color3.new(1, 1, 1)
AutoCleanLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AutoCleanLabel.TextSize = 25
AutoCleanLabel.Size = UDim2.new(0, 200, 0, 50)
AutoCleanLabel.BorderColor3 = Color3.new(0, 0, 0)
AutoCleanLabel.Text = "off "
AutoCleanLabel.TextColor3 = Color3.new(1, 1, 1)
AutoCleanLabel.BackgroundTransparency = 1
AutoCleanLabel.Position = UDim2.new(-0.42, 0, 0.68, 0)
AutoCleanLabel.Parent = AUTOCLEAN

---- NEW UPDATE 20/09/2025
local Noclip22 = Instance.new("TextButton")
Noclip22.Name = "Noclip"
Noclip22.TextWrapped = true
Noclip22.ZIndex = 3
Noclip22.BorderSizePixel = 0
Noclip22.TextScaled = true
Noclip22.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip22.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Noclip22.Size = UDim2.new(0, 161, 0, 34)
Noclip22.TextColor3 = Color3.new(0, 0, 0)
Noclip22.Text = "Noclip V2"
Noclip22.Position = UDim2.new(0.14, 0, 0.31, 0)
Noclip22.Parent = ASYLUM

local UICorner_Noclip22 = Instance.new("UICorner")
UICorner_Noclip22.Parent = Noclip22

local Noclipinfo = Instance.new("TextLabel")
Noclipinfo.Name = "Noclipinfo"
Noclipinfo.TextWrapped = true
Noclipinfo.ZIndex = 20
Noclipinfo.RichText = true
Noclipinfo.TextScaled = true
Noclipinfo.BackgroundColor3 = Color3.new(0, 0, 0)
Noclipinfo.Size = UDim2.new(0, 160, 0, 104)
Noclipinfo.Text = "Click F to clip through walls (no flying)"
Noclipinfo.TextColor3 = Color3.new(1, 1, 1)
Noclipinfo.BackgroundTransparency = 0.2
Noclipinfo.Position = UDim2.new(0, 1, 0, 40)
Noclipinfo.Visible = true
Noclipinfo.Parent = Noclip22



local Comingsoon = Instance.new("TextButton")
Comingsoon.Name = "Comingsoon"
Comingsoon.TextWrapped = true
Comingsoon.BorderSizePixel = 0
Comingsoon.TextScaled = true
Comingsoon.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
Comingsoon.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Comingsoon.Size = UDim2.new(0.00, 104.00, 0.00, 34.00)
Comingsoon.TextColor3 = Color3.new(0.00, 0.00, 0.00)
Comingsoon.Text = "COMING SOON"
Comingsoon.Position = UDim2.new(0.13, 0.00, 0.38, 0.00)
Comingsoon.Parent = Catagory

local UICorner = Instance.new("UICorner")
UICorner.Parent = Comingsoon







local Comingsooninfo = Instance.new("Frame")
Comingsooninfo.Name = "Comingsooninfo"
Comingsooninfo.Size = UDim2.new(0.00, 302.00, 0.00, 260.00)
Comingsooninfo.Position = UDim2.new(0.33, 0.00, 0.02, 0.00)
Comingsooninfo.ZIndex = 3
Comingsooninfo.BackgroundColor3 = Color3.new(0.00, 0.00, 0.00)
Comingsooninfo.Parent = Main
Comingsooninfo.Visible = false

local UICorner = Instance.new("UICorner")
UICorner.Parent = Comingsooninfo

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.ZIndex = 3
TextLabel.BorderSizePixel = 0
TextLabel.RichText = true
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
TextLabel.TextTransparency = 0.20000000298023224
TextLabel.Size = UDim2.new(1.00, 0.00, 0.16, 0.00)
TextLabel.Text = "Coming soon..."
TextLabel.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.00, 0.00, 0.00, 0.00)
TextLabel.Parent = Comingsooninfo

local UICorner_1 = Instance.new("UICorner")
UICorner_1.Parent = TextLabel

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.TextWrapped = true
TextLabel_1.BorderSizePixel = 0
TextLabel_1.RichText = true
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextSize = 40
TextLabel_1.Size = UDim2.new(0.00, 200.00, 0.00, 50.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "--PlayerPanel"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.04, 0.00, 0.15, 0.00)
TextLabel_1.Parent = Comingsooninfo

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.TextWrapped = true
TextLabel_1.BorderSizePixel = 0
TextLabel_1.RichText = true
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextSize = 35
TextLabel_1.Size = UDim2.new(0.00, 311.00, 0.00, 50.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "-- Asylum: Auto claim playtime"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.04, 0.00, 0.38, 0.00)
TextLabel_1.Parent = Comingsooninfo

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.TextWrapped = true
TextLabel_1.BorderSizePixel = 0
TextLabel_1.RichText = true
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextSize = 35
TextLabel_1.Size = UDim2.new(0.00, 311.00, 0.00, 50.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "MAYBE  Revamp gui  👅"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.04, 0.00, 0.60, 0.00)
TextLabel_1.Parent = Comingsooninfo










---------------------- TP Button 
TPBUTTON.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    local escapeCFrame = CFrame.new(Vector3.new(-1, 517, 480))
    hrp.CFrame = escapeCFrame
end)

-- FRAME HOVER ALL
NOCLIPBUTTON.MouseEnter:Connect(function()
	NOCLIP.Visible = true
end)
NOCLIPBUTTON.MouseLeave:Connect(function()
	NOCLIP.Visible = false
end)

TPBUTTON.MouseEnter:Connect(function()
	TP.Visible = true
end)
TPBUTTON.MouseLeave:Connect(function()
	TP.Visible = false
end)

MOP2.MouseEnter:Connect(function()
	NOMOPCOOLDOWN.Visible = true
end)
MOP2.MouseLeave:Connect(function()
  	NOMOPCOOLDOWN.Visible = false
end)

Noclip22.MouseEnter:Connect(function()
	Noclipinfo.Visible = true
end)
Noclip22.MouseLeave:Connect(function()
  	Noclipinfo.Visible = false
end)

---------- DRAGGABLE FRAME
local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos
local function update(input)
	local delta = input.Position - dragStart
	Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Main.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Main.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

----- RAINBOW EFFECT MAIN FRAME Only
local TweenService = game:GetService("TweenService")

task.spawn(function()
    while true do
        local tweenInfo = TweenInfo.new(0.25)
        local goal = {
            BackgroundColor3 = Color3.fromRGB(
                math.random(0, 255),
                math.random(0, 255),
                math.random(0, 255)
            )
        }
        local tween = TweenService:Create(Main, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()
    end
end)

--- ASYLUM BUTTON LOGIC
ASYLUMBUTTON.MouseButton1Click:Connect(function()
	FARM.Visible = false
	INFO.Visible = false
	Comingsooninfo.Visible = false
	ASYLUM.Visible = not ASYLUM.Visible
end)

Farmbutton.MouseButton1Click:Connect(function()
	FARM.Visible = not FARM.Visible
	INFO.Visible = false
	ASYLUM.Visible = false
	Comingsooninfo.Visible = false
end)

Infobutton.MouseButton1Click:Connect(function()
	FARM.Visible = false
	INFO.Visible = not INFO.Visible
	ASYLUM.Visible = false
	Comingsooninfo.Visible = false
end)

Comingsoon.MouseButton1Click:Connect(function()
	FARM.Visible = false
	INFO.Visible = false
	ASYLUM.Visible = false
	Comingsooninfo.Visible = not Comingsooninfo.Visible
end)




--------------------------------------------- TELEPORT 
NOCLIPBUTTON.MouseButton1Click:Connect(function()
  print("played the noclip")
	-- Ultimate Noclip (Roblox, LocalScript, executor-ready, bugfixed)
	-- Features: 6DoF, smooth, speed, anti-fall, boundary lock, mouse look, toggle, restores walking

	local uis = game:GetService("UserInputService")
	local rs = game:GetService("RunService")
	local plr = game.Players.LocalPlayer
	local cam = workspace.CurrentCamera

	-- Map bounds detection (BoundingBox of Workspace)
	local function getMapBounds()
		local min, max = Vector3.new(math.huge,math.huge,math.huge), Vector3.new(-math.huge,-math.huge,-math.huge)
		for _,obj in ipairs(workspace:GetDescendants()) do
			if obj:IsA("BasePart") and obj.CanCollide and obj.Transparency < 1 then
				local cf, sz = obj.CFrame, obj.Size
				for _,offset in ipairs{
					Vector3.new(1, 1, 1),Vector3.new(-1, 1, 1),Vector3.new(1, -1, 1),Vector3.new(1, 1, -1),
					Vector3.new(-1, -1, 1),Vector3.new(-1, 1, -1),Vector3.new(1, -1, -1),Vector3.new(-1, -1, -1)
					} do
					local corner = cf.Position + (cf.Rotation * (sz/2 * offset))
					min = Vector3.new(math.min(min.X, corner.X), math.min(min.Y, corner.Y), math.min(min.Z, corner.Z))
					max = Vector3.new(math.max(max.X, corner.X), math.max(max.Y, corner.Y), math.max(max.Z, corner.Z))
				end
			end
		end
		return min, max
	end

	local minBound, maxBound = getMapBounds()
	local function clampToBounds(pos)
		return Vector3.new(
			math.clamp(pos.X, minBound.X + 2, maxBound.X - 2),
			math.clamp(pos.Y, minBound.Y + 2, maxBound.Y - 2),
			math.clamp(pos.Z, minBound.Z + 2, maxBound.Z - 2)
		)
	end

	-- Noclip state
	local noclip = false
	local speed = 40
	local fastSpeed = 120
	local slowSpeed = 10
	local smooth = 0.15
	local flyVector = Vector3.new()
	local rotX, rotY = 0, 0
	local mouseDrag = false

	-- Movement keys
	local keyMap = {
		[Enum.KeyCode.S] = "forward",[Enum.KeyCode.W] = "back",
		[Enum.KeyCode.A] = "left",[Enum.KeyCode.D] = "right",
		[Enum.KeyCode.E] = "up",[Enum.KeyCode.Q] = "down"
	}
	local keyState = {forward=false, back=false, left=false, right=false, up=false, down=false}

	-- Mouse look
	uis.InputBegan:Connect(function(input, gp)
		if gp then return end
		if input.UserInputType == Enum.UserInputType.MouseButton2 then mouseDrag = true uis.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition end
		if input.KeyCode == Enum.KeyCode.N then
			noclip = not noclip
			if noclip then
				cam.CameraType = Enum.CameraType.Scriptable
				if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
					cam.CFrame = plr.Character.HumanoidRootPart.CFrame
					rotY = select(2, cam.CFrame:ToOrientation())
					rotX = select(1, cam.CFrame:ToOrientation())
				end
			else
				cam.CameraType = Enum.CameraType.Custom
				-- Restore player physics
				if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
					local hrp = plr.Character.HumanoidRootPart
					hrp.Anchored = false
					-- Place HRP slightly above ground if clipping
					local ray = Ray.new(hrp.Position, Vector3.new(0, -10, 0))
					local part, pos = workspace:FindPartOnRay(ray, plr.Character)
					if part then
						hrp.CFrame = CFrame.new(pos + Vector3.new(0, 2, 0))
					end
				end
				if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
					plr.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
				end
			end
		end
		if keyMap[input.KeyCode] then keyState[keyMap[input.KeyCode]] = true end
	end)
	uis.InputEnded:Connect(function(input, gp)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then mouseDrag = false uis.MouseBehavior = Enum.MouseBehavior.Default end
		if keyMap[input.KeyCode] then keyState[keyMap[input.KeyCode]] = false end
	end)
	uis.InputChanged:Connect(function(input, gp)
		if mouseDrag and input.UserInputType == Enum.UserInputType.MouseMovement and noclip then
			rotY = rotY - input.Delta.X * 0.004
			rotX = math.clamp(rotX - input.Delta.Y * 0.004, -math.pi/2, math.pi/2)
		end
	end)

	rs.RenderStepped:Connect(function(dt)
		if noclip then
			-- Movement direction
			local moveDir = Vector3.new()
			if keyState.forward then moveDir = moveDir + Vector3.new(0,0,-1) end
			if keyState.back then moveDir = moveDir + Vector3.new(0,0,1) end
			if keyState.left then moveDir = moveDir + Vector3.new(-1,0,0) end
			if keyState.right then moveDir = moveDir + Vector3.new(1,0,0) end
			if keyState.up then moveDir = moveDir + Vector3.new(0,1,0) end
			if keyState.down then moveDir = moveDir + Vector3.new(0,-1,0) end
			moveDir = moveDir.Magnitude > 0 and moveDir.Unit or Vector3.new()
			-- Speed
			local currSpeed = uis:IsKeyDown(Enum.KeyCode.LeftShift) and fastSpeed or (uis:IsKeyDown(Enum.KeyCode.LeftControl) and slowSpeed or speed)
			flyVector = flyVector:Lerp(moveDir * currSpeed, 1 - (1-smooth)^dt)
			-- Rotation
			local cf = CFrame.new(cam.CFrame.Position) * CFrame.Angles(0, rotY, 0) * CFrame.Angles(rotX, 0, 0)
			-- Move
			local newPos = clampToBounds(cam.CFrame.Position + cf.LookVector * flyVector.Z * dt + cf.RightVector * flyVector.X * dt + cf.UpVector * flyVector.Y * dt)
			cam.CFrame = CFrame.new(newPos) * CFrame.Angles(0, rotY, 0) * CFrame.Angles(rotX, 0, 0)
			-- Anchor player and hide
			if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				local hrp = plr.Character.HumanoidRootPart
				hrp.Anchored = true
				hrp.CFrame = cam.CFrame
				if plr.Character:FindFirstChildOfClass("Humanoid") then
					plr.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
				end
			end
		end
	end)

	print("Ultimate Noclip Loaded! Press N to toggle. Hold Shift for fast, Ctrl for slow, right mouse to look around, WASDQE to move. You can't fall or escape the map! Now bugfixed to restore walking!")
end)















---------- AUTO ESCAPE 
-- Autofarm with persistent serverhop and auto-reload
---------- AUTO ESCAPE 
-- Autofarm with persistent serverhop and auto-reload
-- Replace the URL below with the raw link to this script if you host it somewhere (e.g., pastebin, github raw, etc.)
local GITHUB_SCRIPT_URL = "https://raw.githubusercontent.com/Scarsss111/ASYLUM/refs/heads/main/Auto%20farm%20server%201"

--=== SERVERHOP FUNCTION (Infinite Yield style, with queue_on_teleport and infinite retry) ===--
local FarmPlayers = game:GetService("Players")
local FarmTeleportService = game:GetService("TeleportService")
local FarmHttpService = game:GetService("HttpService")
local FarmHttpRequest = (syn and syn.request) or (http and http.request) or (request) or (httprequest)

local function Farm_ServerHop()
    local PlaceId = game.PlaceId
    local JobId = game.JobId

    while true do -- retry loop
        local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)
        local response = FarmHttpRequest({Url = url, Method = "GET"})
        if not response or not response.Body then
            warn("Failed to get server list for serverhop! Retrying in 2s...")
            task.wait(2)
        else
            local data = FarmHttpService:JSONDecode(response.Body)
            local servers = {}
            if data and data.data then
                for _, v in next, data.data do
                    if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) 
                    and v.playing < v.maxPlayers and v.id ~= JobId then
                        table.insert(servers, 1, v.id)
                    end
                end
            end
            if #servers > 0 then
                -- Prepare to reload script after teleport
                local queuedsrc = ('loadstring(game:HttpGet("%s"))()'):format(GITHUB_SCRIPT_URL)
                if queue_on_teleport then
                    queue_on_teleport(queuedsrc)
                elseif syn and syn.queue_on_teleport then
                    syn.queue_on_teleport(queuedsrc)
                end
                local chosenServer = servers[math.random(1, #servers)]
                FarmTeleportService:TeleportToPlaceInstance(PlaceId, chosenServer, FarmPlayers.LocalPlayer)
                return -- teleport successful, exit retry loop
            else
                warn("Serverhop: Couldn't find a valid server. Retrying in 2s...")
                task.wait(2)
            end
        end
    end
end

--=== AUTOFARM CONFIG ===--
local Farm_TeleportsPerServerHop = 5
local Farm_TeleportDelay = 120
local Farm_JoinWait = 60
local Farm_TargetPosition = Vector3.new(-1, 517, 480)

local FarmReplicatedStorage = game:GetService("ReplicatedStorage")
local FarmLocalPlayer = FarmPlayers.LocalPlayer

-- Autofarm State
local Farm_AutoRunning = false -- starts OFF
local Farm_AutoThread

-- Teleport logic
local function Farm_Teleport()
    local char = FarmLocalPlayer.Character or FarmLocalPlayer.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(Farm_TargetPosition)
end

-- Autofarm main loop
local function Farm_AutoFarmLoop()
    while Farm_AutoRunning do
        -- Wait after join/hop
        if AutoOnorOff then AutoOnorOff.Text = "Waiting..." end
        for i = Farm_JoinWait, 1, -1 do
            if not Farm_AutoRunning then if AutoOnorOff then AutoOnorOff.Text = "OFF :)" end; return end
            if AutoOnorOff then AutoOnorOff.Text = "Wait: " .. i .. "s" end
            task.wait(1)
        end

        -- Do the teleports
        for tpCount = 1, Farm_TeleportsPerServerHop do
            if not Farm_AutoRunning then if AutoOnorOff then AutoOnorOff.Text = "OFF :)" end; return end
            if AutoOnorOff then AutoOnorOff.Text = "Teleporting ("..tpCount.."/"..Farm_TeleportsPerServerHop..")" end
            Farm_Teleport()
            -- Wait
            for i = Farm_TeleportDelay, 1, -1 do
                if not Farm_AutoRunning then if AutoOnorOff then AutoOnorOff.Text = "OFF :)" end; return end
                if AutoOnorOff then AutoOnorOff.Text = "Next TP: "..i.."s" end
                task.wait(1)
            end
        end

        -- Serverhop
        if AutoOnorOff then AutoOnorOff.Text = "Serverhopping..." end
        Farm_ServerHop()
        return -- script will reload on new server
    end
    if AutoOnorOff then AutoOnorOff.Text = "OFF :)" end
end

--=== GUI BUTTON HANDLER ===--
if AUTOESCAPE then
    AUTOESCAPE.MouseButton1Click:Connect(function()
        Farm_AutoRunning = not Farm_AutoRunning
        if Farm_AutoRunning then
            if AutoOnorOff then AutoOnorOff.Text = "ON :D" end
            if Farm_AutoThread and coroutine.status(Farm_AutoThread) == "suspended" then
                coroutine.resume(Farm_AutoThread)
            else
                Farm_AutoThread = coroutine.create(Farm_AutoFarmLoop)
                coroutine.resume(Farm_AutoThread)
            end
        else
            if AutoOnorOff then AutoOnorOff.Text = "OFF :)" end
        end
    end)
end

-- Default GUI label at startup
if AutoOnorOff then
    AutoOnorOff.Text = "OFF :)"
end






























--------------------------------------------------------------------------------
AUTOCLEAN.MouseButton1Click:Connect(function()
  AutoCleanLabel.Text = "ON (PERMENATELY)"
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Scarsss111/ASYLUM/refs/heads/main/obfuscated_script.lua"))()
end)

NOCOOLDOWNMOP.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local spillFolder = workspace.Ignored.Spills
	local RemoteEvent = ReplicatedStorage:WaitForChild("Remote"):WaitForChild("AttemptCleanSpill")
	while true do
		for _, model in ipairs(spillFolder:GetChildren()) do
			if model and model.Parent then
				RemoteEvent:FireServer(model)
			end
		end
		task.wait(0.2)
	end
end)

-- Place this in a LocalScript, and ensure 'Noclip' is a valid TextButton
Noclip22.MouseButton1Click:Connect(function()
    local _player = game:GetService("Players").LocalPlayer
    local _userInput = game:GetService("UserInputService")
    local _runService = game:GetService("RunService")
    local _NOCLIP_KEY = Enum.KeyCode.F

    local _isNoclipActive = false
    local _noclipStepConn, _charAddedConn
    local _noclipGui

    local function _displayNoclipHint(_show)
        if not _noclipGui then
            _noclipGui = Instance.new("ScreenGui")
            _noclipGui.Name = "UniqueNoclipHint"
            _noclipGui.ResetOnSpawn = false
            local _guiLabel = Instance.new("TextLabel")
            _guiLabel.Name = "UniqueHint"
            _guiLabel.Parent = _noclipGui
            _guiLabel.BackgroundTransparency = 0.35
            _guiLabel.BackgroundColor3 = Color3.fromRGB(40,40,60)
            _guiLabel.Position = UDim2.new(0.5, -90, 0, 30)
            _guiLabel.Size = UDim2.new(0, 180, 0, 28)
            _guiLabel.TextColor3 = Color3.fromRGB(0,255,150)
            _guiLabel.Font = Enum.Font.GothamBold
            _guiLabel.TextSize = 20
            _guiLabel.Text = "NOCLIP: ON"
            _guiLabel.BorderSizePixel = 0
            _noclipGui.Parent = _player.PlayerGui
        end
        _noclipGui.Enabled = _show
    end

    local function _setNoclipMode(_enable)
        local _char = _player.Character
        if _char and _char.Parent then
            for _, _part in ipairs(_char:GetDescendants()) do
                if _part:IsA("BasePart") and _part.Name ~= "HumanoidRootPart" then
                    _part.CanCollide = not _enable
                end
            end
        end
    end

    local function _stopVoidFall()
        local _char = _player.Character
        if _char and _char:FindFirstChild("HumanoidRootPart") then
            local _root = _char.HumanoidRootPart
            if _root.Position.Y < -10 then
                _root.CFrame = CFrame.new(_root.Position.X, 5, _root.Position.Z)
            end
        end
    end

    local function _clearAllNoclipConns()
        if _noclipStepConn then _noclipStepConn:Disconnect() _noclipStepConn = nil end
        if _charAddedConn then _charAddedConn:Disconnect() _charAddedConn = nil end
    end

    local function _toggleNoclipUnique()
        _isNoclipActive = not _isNoclipActive
        _displayNoclipHint(_isNoclipActive)
        _setNoclipMode(_isNoclipActive)
        _clearAllNoclipConns()
        if _isNoclipActive then
            _noclipStepConn = _runService.Stepped:Connect(function()
                _setNoclipMode(true)
                _stopVoidFall()
            end)
        end
    end

    _userInput.InputBegan:Connect(function(_inputObj, _gameProcessed)
        if not _gameProcessed and _inputObj.KeyCode == _NOCLIP_KEY then
            _toggleNoclipUnique()
        end
    end)

    _player.CharacterAdded:Connect(function()
        _isNoclipActive = false
        _displayNoclipHint(false)
        _setNoclipMode(false)
        _clearAllNoclipConns()
    end)

    _displayNoclipHint(false)
end) 

----------------------------------------------- THE AUTO SPILL CLICK ONCE


MOP2.MouseButton1Click:Connect(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local spillFolder = workspace.Ignored.Spills
    local RemoteEvent = ReplicatedStorage:WaitForChild("Remote"):WaitForChild("AttemptCleanSpill")

    task.spawn(function()
        while true do
            for _, model in ipairs(spillFolder:GetChildren()) do
                if model and model.Parent then
                    RemoteEvent:FireServer(model)
                end
            end
            task.wait(0.2) -- adjust as needed
        end
    end)
end) 
