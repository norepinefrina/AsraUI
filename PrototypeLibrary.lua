function MakeList(Parent)
local L = Instance.new("UIListLayout")
L.SortOrder = 2
L.HorizontalAlignment = 1
L.Padding = UDim.new(0, 4)
L.Parent = Parent
end

local Lib = {}
function Lib:MakePrototypeLibrary(Title)

local SG = Instance.new("ScreenGui")
SG.Name = "AstralicPrototype"
SG.DisplayOrder = math.huge
SG.ResetOnSpawn = false
SG.IgnoreGuiInset = true
SG.Parent = gethui()

local Back = Instance.new("Frame")
Back.Name = "Back"
Back.BackgroundColor3 = Color3.fromHex("121318")
Back.Size = UDim2.new(0, 450, 0, 300)
Back.Draggable = true
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0.5, 0, 0.7, 0)
Back.Active = true
Back.AnchorPoint = Vector2.new(0.5, 0.5)
Back.Parent = SG

local X = Instance.new("TextButton")
X.Name = "X"
X.BackgroundTransparency = 1
X.Font = 9
X.TextColor3 = Color3.fromHex("7a7a84")
X.Size = UDim2.new(0, 30, 0, 30)
X.Text = "X"
X.TextScaled = true
X.Position = UDim2.new(0, 410, 0, 10)
X.Parent = Back
X.MouseButton1Click:Connect(function()
SG:Destroy()
end)

local TitleUI = Instance.new("TextLabel")
TitleUI.Name = "TitleUI"
TitleUI.Size = UDim2.new(0, 300, 0, 30)
TitleUI.Text = Title
TitleUI.TextColor3 = Color3.fromHex("7a7a84")
TitleUI.Font = 9
TitleUI.Position = UDim2.new(0, 10, 0, 10)
TitleUI.TextScaled = true
TitleUI.BackgroundTransparency = 1
TitleUI.TextXAlignment = 0
TitleUI.Parent = Back

local ToggleUI = Instance.new("TextButton")
ToggleUI.Name = "ToggleUI"
ToggleUI.Font = 9
ToggleUI.Size = UDim2.new(0, 32, 0, 32)
ToggleUI.TextScaled = true
ToggleUI.TextColor3 = Color3.fromHex("7a7a84")
ToggleUI.Position = UDim2.new(1, -224, 0, 4)
ToggleUI.Text = "P"
ToggleUI.BackgroundTransparency = 0.4
ToggleUI.BackgroundColor3 = Color3.fromHex("000000")
ToggleUI.Parent = SG
Instance.new("UICorner", ToggleUI).CornerRadius = UDim.new(0, 8)
ToggleUI.MouseButton1Click:Connect(function()
Back.Visible = not Back.Visible
end)

local TabsOpenContainer = Instance.new("ScrollingFrame")
TabsOpenContainer.ScrollingDirection = 2
TabsOpenContainer.BackgroundColor3 = Color3.fromHex("17181d")
TabsOpenContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
TabsOpenContainer.AutomaticCanvasSize = 2
TabsOpenContainer.Name = "TabsOpenContainer"
TabsOpenContainer.Position = UDim2.new(0, 10, 0, 45)
TabsOpenContainer.ElasticBehavior = 1
TabsOpenContainer.BorderSizePixel = 0
TabsOpenContainer.ScrollBarThickness = 0
TabsOpenContainer.Size = UDim2.new(0, 105, 0, 245)
TabsOpenContainer.BackgroundTransparency = 0
TabsOpenContainer.Parent = Back
MakeList(TabsOpenContainer)

local TabsContainer = Instance.new("Frame")
TabsContainer.Size = UDim2.new(0, 315, 0, 245)
TabsContainer.BorderSizePixel = 0
TabsContainer.Name = "TabsContainer"
TabsContainer.Position = UDim2.new(0, 125, 0, 45)
TabsContainer.BackgroundColor3 = Color3.fromHex("17181d")
TabsContainer.Parent = Back

local MakeATab = {}

function MakeATab:MakeTab(Title, Visible)
local OpenTab = Instance.new("TextButton")
OpenTab.BorderSizePixel = 0
OpenTab.Name = "OpenTab"
OpenTab.TextColor3 = Color3.fromHex("7a7a84")
OpenTab.Text = Title
OpenTab.Size = UDim2.new(1, 0, 0, 30)
OpenTab.TextScaled = true
OpenTab.BackgroundColor3 = Color3.fromHex("1d1d27")
OpenTab.Font = 9
OpenTab.Parent = TabsOpenContainer

local Tab = Instance.new("ScrollingFrame")
Tab.Name = "Tab"
Tab.Visible = Visible or false
Tab.ScrollingDirection = 2
Tab.AutomaticCanvasSize = 2
Tab.ElasticBehavior = 1
Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
Tab.ScrollBarThickness = 0
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.BackgroundTransparency = 1
Tab.Parent = TabsContainer
MakeList(Tab)

OpenTab.MouseButton1Click:Connect(function()
for i,v in ipairs(TabsContainer:GetChildren()) do
if v:IsA("ScrollingFrame") then
v.Visible = false
end
end
Tab.Visible = true
end)

local TabElements = {}
function TabElements:Info(Title)
local Info = Instance.new("TextButton")
Info.TextScaled = true
Info.Font = 9
Info.Size = UDim2.new(1, 0, 0, 30)
Info.BackgroundTransparency = 1
Info.Text = Title
Info.TextXAlignment = 0
Info.Name = "Info"
Info.TextColor3 = Color3.fromHex("7a7a84")
Info.Parent = Tab
end

function TabElements:Button(Title, Cally)
local Button = Instance.new("TextButton")
Button.TextXAlignment = 0
Button.Name = "Button"
Button.TextColor3 = Color3.fromHex("7a7a84")
Button.Text = Title
Button.Font = 9
Button.Size = UDim2.new(1, 0, 0, 30)
Button.TextScaled = true
Button.BackgroundColor3 = Color3.fromHex("1d1d27")
Button.BorderSizePixel = 0
Button.Parent = Tab
Button.MouseButton1Click:Connect(function()
pcall(Cally)
end)
end

function TabElements:Toggle(Title, Cally)
local Tog = Instance.new("TextLabel")
Tog.Size = UDim2.new(1, -60, 0, 30)
Tog.BorderSizePixel = 0
Tog.BackgroundColor3 = Color3.fromHex("1d1d27")
Tog.TextXAlignment = 0
Tog.TextColor3 = Color3.fromHex("7a7a84")
Tog.Text = Title
Tog.Font = 9
Tog.TextScaled = true
Tog.Parent = Tab

local TogButton = Instance.new("TextButton")
TogButton.TextColor3 = Color3.fromHex("ff0000")
TogButton.TextScaled = true
TogButton.BackgroundTransparency = 1
TogButton.Size = UDim2.new(0, 60, 0, 30)
TogButton.Text = "OFF ❌"
TogButton.Position = UDim2.new(1, 0, 0, 0)
TogButton.Parent = Tog

local On = false

TogButton.MouseButton1Click:Connect(function()
On = not On
if On then
TogButton.Text = "ON ✅"
TogButton.TextColor3 = Color3.fromHex("00ff00")
else
TogButton.TextColor3 = Color3.fromHex("ff0000")
TogButton.Text = "OFF ❌"
end
pcall(Cally, On)
end)
end

return TabElements
end
return MakeATab
end
return Lib
