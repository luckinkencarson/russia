local DivisionText = Instance.new("ScreenGui")
local BeginText = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local Bottom = Instance.new("TextLabel")

DivisionText.Name = "DivisionText"
DivisionText.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DivisionText.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BeginText.Name = "BeginText"
BeginText.Parent = DivisionText
BeginText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BeginText.BackgroundTransparency = 1.000
BeginText.BorderColor3 = Color3.fromRGB(0, 0, 0)
BeginText.BorderSizePixel = 0
BeginText.Position = UDim2.new(0.371162474, 0, 0.418605953, 0)
BeginText.Size = UDim2.new(0, 365, 0, 93)

Top.Name = "Top"
Top.Parent = BeginText
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, 0.150000006, 0)
Top.Size = UDim2.new(0, 365, 0, 15)
Top.Font = Enum.Font.SourceSansBold
Top.Text = " welcome to hunted 2.0: <font color=\"rgb(255,255,255)\">(INS to open menu)</font>"
Top.TextColor3 = Color3.fromRGB(53, 247, 248)
Top.TextSize = 15.000
Top.RichText = true
Bottom.Name = "Bottom"
Bottom.Parent = BeginText
Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bottom.BackgroundTransparency = 1.000
Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 0, 0.300000012, 0)
Bottom.Size = UDim2.new(0, 365, 0, 15)
Bottom.Font = Enum.Font.SourceSansBold
Bottom.Text = " discord.gg/: <font color=\"rgb(255,255,255)\">(hunted)</font>"
Bottom.TextColor3 = Color3.fromRGB(53, 247, 248)
Bottom.TextSize = 15.000
Bottom.RichText = true

local function gradualFadeOut()
    local fadeDuration = 5
    local fadeStep = 0.1 
    local steps = fadeDuration / fadeStep 
    local transparencyStep = 1 / steps
    local currentTransparency = 0
    for i = 1, steps do
        currentTransparency = currentTransparency + transparencyStep
        Top.TextTransparency = currentTransparency
        Bottom.TextTransparency = currentTransparency
        wait(fadeStep)
    end

    Top.TextTransparency = 1
    Bottom.TextTransparency = 1
    wait(0.1)
    DivisionText:Destroy()
end

gradualFadeOut()

local Division1to1 = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Tabbuttons = Instance.new("Frame")
local Button1 = Instance.new("TextButton")
local Button1_2 = Instance.new("TextButton")
local Button1_3 = Instance.new("TextButton")
local Button1_4 = Instance.new("TextButton")
local Button1_5 = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local UIStroke = Instance.new("UIStroke")
local Group = Instance.new("Frame")
local left = Instance.new("Frame")
local Toggled = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local SliderAmount = Instance.new("TextLabel")
local Label = Instance.new("TextLabel")
local SliderBack = Instance.new("Frame")
local Draggable = Instance.new("Frame")
local DropDown = Instance.new("Frame")
local UIStroke_2 = Instance.new("UIStroke")
local DropDown2 = Instance.new("Frame")
local UIStroke_3 = Instance.new("UIStroke")
local None2 = Instance.new("TextButton")
local None = Instance.new("TextButton")
local DropDown3 = Instance.new("Frame")
local UIStroke_4 = Instance.new("UIStroke")
local None3 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local ToggledKeyBind = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local TextLabel_4 = Instance.new("TextLabel")
local KeyBind = Instance.new("TextButton")
local ToggledWithColor = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local TextLabel_5 = Instance.new("TextLabel")
local ColorPicker = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local Colorpicker1 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local hovercolor = Instance.new("Frame")
local realcolor = Instance.new("Frame")
local Color1 = Instance.new("TextBox")
local ToggledKeyBind2 = Instance.new("Frame")
local UIGradient_5 = Instance.new("UIGradient")
local MenuBind = Instance.new("TextLabel")
local KeyBind2 = Instance.new("TextButton")
local right = Instance.new("Frame")
local RightSubTabs = Instance.new("Frame")
local rightSubTab = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local LeftSubTabs = Instance.new("Frame")
local LeftSubTab = Instance.new("TextButton")
local UIListLayout_3 = Instance.new("UIListLayout")

Division1to1.Name = "Division 1 to 1"
Division1to1.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Division1to1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BG.Name = "BG"
BG.Parent = Division1to1
BG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BG.BackgroundTransparency = 1.000
BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
BG.BorderSizePixel = 0
BG.Position = UDim2.new(0.338907003, 0, 0.168169215, 0)
BG.Size = UDim2.new(0, 576, 0, 15)

local dragInput
local dragStart
local startPos
local dragging = false

BG.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = BG.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

BG.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        BG.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

Main.Name = "Main"
Main.Parent = BG
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
Main.BorderColor3 = Color3.fromRGB(65, 65, 68)
Main.Position = UDim2.new(0, 0, 0.165000007, -5)
Main.Size = UDim2.new(0, 570, 0, 334)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 570, 0, 16)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Hunted"
TextLabel.TextColor3 = Color3.fromRGB(203, 203, 203)
TextLabel.TextSize = 15.000

Tabbuttons.Name = "Tabbuttons"
Tabbuttons.Parent = Main
Tabbuttons.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
Tabbuttons.BorderColor3 = Color3.fromRGB(26, 26, 26)
Tabbuttons.Position = UDim2.new(0.001754386, 0, 0.0479041934, 0)
Tabbuttons.Size = UDim2.new(0, 568, 0, 22)

Button1.Name = "Button1"
Button1.Parent = Tabbuttons
Button1.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Button1.BorderColor3 = Color3.fromRGB(25, 23, 25)
Button1.Position = UDim2.new(0.0295857992, 0, -0.0382773653, 0)
Button1.Size = UDim2.new(0, 110, 0, 18)
Button1.Font = Enum.Font.SourceSansSemibold
Button1.Text = "Aimbot"
Button1.TextColor3 = Color3.fromRGB(203, 203, 203)
Button1.TextSize = 14.000
Button1.Visible = false

Button1_2.Name = "Button1"
Button1_2.Parent = Tabbuttons
Button1_2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Button1_2.BorderColor3 = Color3.fromRGB(25, 23, 25)
Button1_2.Position = UDim2.new(0.0295857992, 0, -0.0382773653, 0)
Button1_2.Size = UDim2.new(0, 110, 0, 18)
Button1_2.Font = Enum.Font.SourceSansSemibold
Button1_2.Text = "Player ESP"
Button1_2.TextColor3 = Color3.fromRGB(203, 203, 203)
Button1_2.TextSize = 14.000
Button1_2.Visible = false

Button1_3.Name = "Button1"
Button1_3.Parent = Tabbuttons
Button1_3.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Button1_3.BorderColor3 = Color3.fromRGB(25, 23, 25)
Button1_3.Position = UDim2.new(0.0295857992, 0, -0.0382773653, 0)
Button1_3.Size = UDim2.new(0, 110, 0, 18)
Button1_3.Font = Enum.Font.SourceSansSemibold
Button1_3.Text = "Entity ESP"
Button1_3.TextColor3 = Color3.fromRGB(203, 203, 203)
Button1_3.TextSize = 14.000
Button1_3.Visible = false

Button1_4.Name = "Button1"
Button1_4.Parent = Tabbuttons
Button1_4.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Button1_4.BorderColor3 = Color3.fromRGB(25, 23, 25)
Button1_4.Position = UDim2.new(0.0295857992, 0, -0.0382773653, 0)
Button1_4.Size = UDim2.new(0, 110, 0, 18)
Button1_4.Font = Enum.Font.SourceSansSemibold
Button1_4.Text = "Miscellaneous"
Button1_4.TextColor3 = Color3.fromRGB(203, 203, 203)
Button1_4.TextSize = 14.000
Button1_4.Visible = false

Button1_5.Name = "Button1"
Button1_5.Parent = Tabbuttons
Button1_5.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Button1_5.BorderColor3 = Color3.fromRGB(25, 23, 25)
Button1_5.Position = UDim2.new(0.80457747, 0, 0.0909090936, 0)
Button1_5.Size = UDim2.new(0, 110, 0, 18)
Button1_5.Font = Enum.Font.SourceSansSemibold
Button1_5.Text = "Settings"
Button1_5.TextColor3 = Color3.fromRGB(203, 203, 203)
Button1_5.TextSize = 14.000
Button1_5.Visible = false

UIListLayout.Parent = Tabbuttons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 4)

UIStroke.Color = Color3.fromRGB(26, 26, 26)
UIStroke.Thickness = 1.600000023841858
UIStroke.Parent = Main

Group.Name = "Group"
Group.Parent = Main
Group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Group.BackgroundTransparency = 1.000
Group.BorderColor3 = Color3.fromRGB(0, 0, 0)
Group.BorderSizePixel = 0
Group.Position = UDim2.new(0.00400000019, 0, 0.114, 3)
Group.Size = UDim2.new(0, 566, 0, 289)

left.Name = "left"
left.Parent = Group
left.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
left.BorderColor3 = Color3.fromRGB(23, 23, 23)
left.Position = UDim2.new(-0.00100000005, 1, -0.0170000009, 5)
left.Size = UDim2.new(0, 280, 0, 288)
left.Visible = false

local Toggled = Instance.new("TextButton")
Toggled.Name = "Toggled"
Toggled.Parent = left
Toggled.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Toggled.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggled.Position = UDim2.new(0, 8, 0, 77)
Toggled.Size = UDim2.new(0, 9, 0, 9)
Toggled.AutoButtonColor = false  
Toggled.Text = "" 

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
}
UIGradient.Rotation = -82
UIGradient.Parent = Toggled

local TextLabel_2 = Instance.new("TextLabel")
TextLabel_2.Parent = Toggled
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(1.59999931, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 244, 0, 9)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Admin Flag"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

local toggledOn = false
local originalColor = Color3.fromRGB(53, 247, 248)
local falseColor = Color3.fromRGB(49, 49, 49)

local function toggleToggledFrame()
    toggledOn = not toggledOn
    if toggledOn then
        Toggled.BackgroundColor3 = originalColor
        print("Toggle true")
    else
        Toggled.BackgroundColor3 = falseColor
       print("Toggle false")
    end
end

Toggled.MouseButton1Click:Connect(function()
    toggleToggledFrame()
end)

SliderAmount.Name = "SliderAmount"
SliderAmount.Parent = left
SliderAmount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderAmount.BackgroundTransparency = 1.000
SliderAmount.BorderColor3 = Color3.fromRGB(0, 0, 0)
SliderAmount.BorderSizePixel = 0
SliderAmount.Position = UDim2.new(0.050999999, 0, 0.119999997, 0)
SliderAmount.Size = UDim2.new(0.587358296, 0, 0.041533757, 0)
SliderAmount.Font = Enum.Font.Unknown
SliderAmount.Text = ""
SliderAmount.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderAmount.TextSize = 11.000
SliderAmount.TextXAlignment = Enum.TextXAlignment.Right

Label.Name = "Label"
Label.Parent = SliderAmount
Label.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(-0.0416709706, 0, -1.03682172, 0)
Label.Size = UDim2.new(0, 116, 0, 14)
Label.Font = Enum.Font.SourceSansSemibold
Label.Text = "Fov Changer: 69"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000
Label.TextXAlignment = Enum.TextXAlignment.Left

SliderBack.Name = "SliderBack"
SliderBack.Parent = SliderAmount
SliderBack.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
SliderBack.BorderColor3 = Color3.fromRGB(10, 10, 10)
SliderBack.Position = UDim2.new(-0.041671142, 0, 0.194027707, 0)
SliderBack.Size = UDim2.new(0, 260, 0, 6)

Draggable.Name = "Draggable"
Draggable.Parent = SliderBack
Draggable.BackgroundColor3 = Color3.fromRGB(53, 247, 248)
Draggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
Draggable.Size = UDim2.new(0, 213, 0, 6)

local DropDown = Instance.new("TextButton")
DropDown.Name = "DropDown"
DropDown.Parent = left
DropDown.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
DropDown.BorderColor3 = Color3.fromRGB(18, 18, 18)
DropDown.Position = UDim2.new(0.0240037106, 0, 0.197231784, 0)
DropDown.Size = UDim2.new(0, 148, 0, 12)
DropDown.Font = Enum.Font.SourceSansSemibold
DropDown.Text = "Patrick.Pub"  -- Example text
DropDown.TextColor3 = Color3.fromRGB(255, 255, 255)
DropDown.TextSize = 14.000
DropDown.TextXAlignment = Enum.TextXAlignment.Left

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(12, 12, 12)
UIStroke.Parent = DropDown

local DropDown2 = Instance.new("TextButton")
DropDown2.Name = "DropDown2"
DropDown2.Parent = DropDown
DropDown2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
DropDown2.BorderColor3 = Color3.fromRGB(18, 18, 18)
DropDown2.Position = UDim2.new(-0.00300000003, 1, 1.03299999, -1)
DropDown2.Size = UDim2.new(0, 148, 0, 12)
DropDown2.Visible = false  -- Initially hidden
DropDown2.Font = Enum.Font.SourceSansSemibold
DropDown2.Text = "None2"  -- Example text
DropDown2.TextColor3 = Color3.fromRGB(255, 255, 255)
DropDown2.TextSize = 14.000
DropDown2.TextXAlignment = Enum.TextXAlignment.Left

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(12, 12, 12)
UIStroke2.Parent = DropDown2

local DropDown3 = Instance.new("TextButton")
DropDown3.Name = "DropDown3"
DropDown3.Parent = DropDown
DropDown3.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
DropDown3.BorderColor3 = Color3.fromRGB(18, 18, 18)
DropDown3.Position = UDim2.new(-0.00300000003, 1, 2.0999999, -1)
DropDown3.Size = UDim2.new(0, 148, 0, 12)
DropDown3.Visible = false  -- Initially hidden
DropDown3.Font = Enum.Font.SourceSansSemibold
DropDown3.Text = "None3"  -- Example text
DropDown3.TextColor3 = Color3.fromRGB(255, 255, 255)
DropDown3.TextSize = 14.000
DropDown3.TextXAlignment = Enum.TextXAlignment.Left

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = Color3.fromRGB(12, 12, 12)
UIStroke3.Parent = DropDown3

local dropDownVisible = false

local function hideOtherDropDowns(clickedDropDown)
    if clickedDropDown == DropDown2 then
        DropDown3.Visible = false
    elseif clickedDropDown == DropDown3 then
        DropDown2.Visible = false
    end
end

local function setupDropDownInteraction()
    DropDown.MouseButton1Click:Connect(function()
        dropDownVisible = not dropDownVisible
        DropDown2.Visible = dropDownVisible
        DropDown3.Visible = dropDownVisible
    end)

    DropDown2.MouseButton1Click:Connect(function()
        hideOtherDropDowns(DropDown2)
        local tempText = DropDown.Text
        DropDown.Text = DropDown2.Text
        DropDown2.Text = tempText
        DropDown2.Visible = false
        dropDownVisible = false
    end)

    DropDown3.MouseButton1Click:Connect(function()
        hideOtherDropDowns(DropDown3)
        local tempText = DropDown.Text
        DropDown.Text = DropDown3.Text
        DropDown3.Text = tempText
        DropDown3.Visible = false
        dropDownVisible = false
    end)
end

setupDropDownInteraction()

local UIStroke_2 = Instance.new("UIStroke")
UIStroke_2.Color = Color3.fromRGB(12, 12, 12)
UIStroke_2.Parent = DropDown
TextLabel_3.Parent = DropDown
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.00758299977, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 144, 0, -12)
TextLabel_3.Font = Enum.Font.SourceSansSemibold
TextLabel_3.Text = "Hit Material"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

local ToggledKeyBind = Instance.new("TextButton")
ToggledKeyBind.Name = "ToggledKeyBind"
ToggledKeyBind.Parent = left
ToggledKeyBind.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ToggledKeyBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggledKeyBind.Position = UDim2.new(0, 8, 0, 93)
ToggledKeyBind.Size = UDim2.new(0, 9, 0, 9)
ToggledKeyBind.AutoButtonColor = false
ToggledKeyBind.Text = ""

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
}
UIGradient.Rotation = -82
UIGradient.Parent = ToggledKeyBind

local TextLabel_4 = Instance.new("TextLabel")
TextLabel_4.Parent = ToggledKeyBind
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(1.60000277, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 244, 0, 9)
TextLabel_4.Font = Enum.Font.SourceSansSemibold
TextLabel_4.Text = "Zoom"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

local KeyBind = Instance.new("TextButton")
KeyBind.Name = "KeyBind"
KeyBind.Parent = ToggledKeyBind
KeyBind.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
KeyBind.BorderColor3 = Color3.fromRGB(9, 9, 9)
KeyBind.Position = UDim2.new(24.333334, 0, 0, 0)
KeyBind.Size = UDim2.new(0, 41, 0, 9)
KeyBind.Font = Enum.Font.SourceSansSemibold
KeyBind.Text = "MB1"
KeyBind.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBind.TextSize = 14.000

local ToggledKeyBindOn = false
local originalColor = Color3.fromRGB(53, 247, 248)
local falseColor = Color3.fromRGB(49, 49, 49)

local currentKeyBind = "MB1"

local function toggleToggledKeyBindFrame()
    ToggledKeyBindOn = not ToggledKeyBindOn
    if ToggledKeyBindOn then
        ToggledKeyBind.BackgroundColor3 = originalColor
        print("Toggle true")
    else
        ToggledKeyBind.BackgroundColor3 = falseColor
        print("Toggle false")
    end
end

ToggledKeyBind.MouseButton1Click:Connect(function()
    toggleToggledKeyBindFrame()
end)

local function updateKeyBindText(key)
    currentKeyBind = key
    if key == "MouseButton1" then
        KeyBind.Text = "MB1"
    elseif key == "MouseButton2" then
        KeyBind.Text = "MB2"
    elseif key == "MouseButton3" then
        KeyBind.Text = "MB3"
    else
        KeyBind.Text = key
    end
    toggleToggledKeyBindFrame()
end

KeyBind.MouseButton1Click:Connect(function()
    KeyBind.Text = "..."
    local input = game:GetService("UserInputService")
    local keyPressed = ""
    local connection
    connection = input.InputBegan:Connect(function(inputObject)
        if inputObject.UserInputType == Enum.UserInputType.Keyboard then
            keyPressed = inputObject.KeyCode.Name
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
            keyPressed = "MouseButton1"
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton2 then
            keyPressed = "MouseButton2"
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton3 then
            keyPressed = "MouseButton3"
        end
        updateKeyBindText(keyPressed)
        connection:Disconnect()
    end)
end)

local function handleKeyPress(key)
    if key == currentKeyBind or
       (currentKeyBind == "MouseButton1" and key == Enum.UserInputType.MouseButton1) or
       (currentKeyBind == "MouseButton2" and key == Enum.UserInputType.MouseButton2) or
       (currentKeyBind == "MouseButton3" and key == Enum.UserInputType.MouseButton3) or
       (currentKeyBind == "End" and key == Enum.KeyCode.End) or
       (currentKeyBind == "RightShift" and key == Enum.KeyCode.RightShift) or
       (currentKeyBind == "LeftShift" and key == Enum.KeyCode.LeftShift) or
       (currentKeyBind == "Insert" and key == Enum.KeyCode.Insert) or
       (currentKeyBind == "A" and key == Enum.KeyCode.A) or
       (currentKeyBind == "B" and key == Enum.KeyCode.B) or
       (currentKeyBind == "C" and key == Enum.KeyCode.C) or
       (currentKeyBind == "D" and key == Enum.KeyCode.D) or
       (currentKeyBind == "E" and key == Enum.KeyCode.E) or
       (currentKeyBind == "F" and key == Enum.KeyCode.F) or
       (currentKeyBind == "G" and key == Enum.KeyCode.G) or
       (currentKeyBind == "H" and key == Enum.KeyCode.H) or
       (currentKeyBind == "I" and key == Enum.KeyCode.I) or
       (currentKeyBind == "J" and key == Enum.KeyCode.J) or
       (currentKeyBind == "K" and key == Enum.KeyCode.K) or
       (currentKeyBind == "L" and key == Enum.KeyCode.L) or
       (currentKeyBind == "M" and key == Enum.KeyCode.M) or
       (currentKeyBind == "N" and key == Enum.KeyCode.N) or
       (currentKeyBind == "O" and key == Enum.KeyCode.O) or
       (currentKeyBind == "P" and key == Enum.KeyCode.P) or
       (currentKeyBind == "Q" and key == Enum.KeyCode.Q) or
       (currentKeyBind == "R" and key == Enum.KeyCode.R) or
       (currentKeyBind == "S" and key == Enum.KeyCode.S) or
       (currentKeyBind == "T" and key == Enum.KeyCode.T) or
       (currentKeyBind == "U" and key == Enum.KeyCode.U) or
       (currentKeyBind == "V" and key == Enum.KeyCode.V) or
       (currentKeyBind == "W" and key == Enum.KeyCode.W) or
       (currentKeyBind == "X" and key == Enum.KeyCode.X) or
       (currentKeyBind == "Y" and key == Enum.KeyCode.Y) or
       (currentKeyBind == "Z" and key == Enum.KeyCode.Z) then
        toggleToggledKeyBindFrame()
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        handleKeyPress(input.KeyCode.Name)
    elseif input.UserInputType == Enum.UserInputType.MouseButton1 or
           input.UserInputType == Enum.UserInputType.MouseButton2 or
           input.UserInputType == Enum.UserInputType.MouseButton3 then
        handleKeyPress(input.UserInputType)
    end
end)

local ToggledKeyBind2 = Instance.new("TextButton")
ToggledKeyBind2.Name = "ToggledKeyBind2"
ToggledKeyBind2.Parent = left
ToggledKeyBind2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ToggledKeyBind2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggledKeyBind2.Position = UDim2.new(0, 8, 0, 128)
ToggledKeyBind2.Size = UDim2.new(0, 9, 0, 9)
ToggledKeyBind2.AutoButtonColor = false
ToggledKeyBind2.Text = ""

local UIGradient_5 = Instance.new("UIGradient")
UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_5.Rotation = -82
UIGradient_5.Parent = ToggledKeyBind2

local MenuBind = Instance.new("TextButton")
MenuBind.Name = "MenuBind"
MenuBind.Parent = ToggledKeyBind2
MenuBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MenuBind.BackgroundTransparency = 1.000
MenuBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
MenuBind.BorderSizePixel = 0
MenuBind.Position = UDim2.new(1.60000277, 0, 0, 0)
MenuBind.Size = UDim2.new(0, 63, 0, 9)
MenuBind.Font = Enum.Font.SourceSansSemibold
MenuBind.Text = "Menu Bind"
MenuBind.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuBind.TextSize = 14.000
MenuBind.TextXAlignment = Enum.TextXAlignment.Left

local KeyBind2 = Instance.new("TextButton")
KeyBind2.Name = "KeyBind2"
KeyBind2.Parent = ToggledKeyBind2
KeyBind2.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
KeyBind2.BorderColor3 = Color3.fromRGB(9, 9, 9)
KeyBind2.Position = UDim2.new(24.333334, 0, 0, 0)
KeyBind2.Size = UDim2.new(0, 41, 0, 9)
KeyBind2.Font = Enum.Font.SourceSansSemibold
KeyBind2.Text = "K"
KeyBind2.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBind2.TextSize = 14.000

local ToggledKeyBind2On = false
local originalColor = Color3.fromRGB(53, 247, 248)
local falseColor = Color3.fromRGB(49, 49, 49)
local menuVisible = false 

local function toggleToggledKeyBind2Frame()
    ToggledKeyBind2On = not ToggledKeyBind2On
    if ToggledKeyBind2On then
        ToggledKeyBind2.BackgroundColor3 = originalColor
        print("Toggle true")
        menuVisible = true
    else
        ToggledKeyBind2.BackgroundColor3 = falseColor
        print("Toggle false")
        menuVisible = false
    end
    BG.Visible = menuVisible
end

ToggledKeyBind2.MouseButton1Click:Connect(function()
    toggleToggledKeyBind2Frame()
end)

local function updateKeyBind2Text(key2)
    currentKeyBind2 = key2
    if key2 == "MouseButton1" then
        KeyBind2.Text = "MB1"
    elseif key2 == "MouseButton2" then
        KeyBind2.Text = "MB2"
    elseif key2 == "MouseButton3" then
        KeyBind2.Text = "MB3"
    else
        KeyBind2.Text = key2
    end
    toggleToggledKeyBind2Frame()
end

KeyBind2.MouseButton1Click:Connect(function()
    KeyBind2.Text = "...."
    local input = game:GetService("UserInputService")
    local keyPressed2 = ""
    local connection

    connection = input.InputBegan:Connect(function(inputObject)
        if inputObject.UserInputType == Enum.UserInputType.Keyboard then
            keyPressed2 = inputObject.KeyCode.Name
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
            keyPressed2 = "MouseButton1"
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton2 then
            keyPressed2 = "MouseButton2"
        elseif inputObject.UserInputType == Enum.UserInputType.MouseButton3 then
            keyPressed2 = "MouseButton3"
        end
        updateKeyBind2Text(keyPressed2) 
        connection:Disconnect() 
    end)
end)

local function handleKeyPress(key2)
    if key2 == currentKeyBind2 or
       (currentKeyBind2 == "MouseButton1" and key2 == Enum.UserInputType.MouseButton1) or
       (currentKeyBind2 == "MouseButton2" and key2 == Enum.UserInputType.MouseButton2) or
       (currentKeyBind2 == "MouseButton3" and key2 == Enum.UserInputType.MouseButton3) or
       (currentKeyBind2 == "End" and key2 == Enum.KeyCode.End) or
       (currentKeyBind2 == "RightShift" and key2 == Enum.KeyCode.RightShift) or
       (currentKeyBind2 == "LeftShift" and key2 == Enum.KeyCode.LeftShift) or
       (currentKeyBind2 == "Insert" and key2 == Enum.KeyCode.Insert) or
       (currentKeyBind2 == "A" and key2 == Enum.KeyCode.A) or
       (currentKeyBind2 == "B" and key2 == Enum.KeyCode.B) or
       (currentKeyBind2 == "C" and key2 == Enum.KeyCode.C) or
       (currentKeyBind2 == "D" and key2 == Enum.KeyCode.D) or
       (currentKeyBind2 == "E" and key2 == Enum.KeyCode.E) or
       (currentKeyBind2 == "F" and key2 == Enum.KeyCode.F) or
       (currentKeyBind2 == "G" and key2 == Enum.KeyCode.G) or
       (currentKeyBind2 == "H" and key2 == Enum.KeyCode.H) or
       (currentKeyBind2 == "I" and key2 == Enum.KeyCode.I) or
       (currentKeyBind2 == "J" and key2 == Enum.KeyCode.J) or
       (currentKeyBind2 == "K" and key2 == Enum.KeyCode.K) or
       (currentKeyBind2 == "L" and key2 == Enum.KeyCode.L) or
       (currentKeyBind2 == "M" and key2 == Enum.KeyCode.M) or
       (currentKeyBind2 == "N" and key2 == Enum.KeyCode.N) or
       (currentKeyBind2 == "O" and key2 == Enum.KeyCode.O) or
       (currentKeyBind2 == "P" and key2 == Enum.KeyCode.P) or
       (currentKeyBind2 == "Q" and key2 == Enum.KeyCode.Q) or
       (currentKeyBind2 == "R" and key2 == Enum.KeyCode.R) or
       (currentKeyBind2 == "S" and key2 == Enum.KeyCode.S) or
       (currentKeyBind2 == "T" and key2 == Enum.KeyCode.T) or
       (currentKeyBind2 == "U" and key2 == Enum.KeyCode.U) or
       (currentKeyBind2 == "V" and key2 == Enum.KeyCode.V) or
       (currentKeyBind2 == "W" and key2 == Enum.KeyCode.W) or
       (currentKeyBind2 == "X" and key2 == Enum.KeyCode.X) or
       (currentKeyBind2 == "Y" and key2 == Enum.KeyCode.Y) or
       (currentKeyBind2 == "Z" and key2 == Enum.KeyCode.Z) then
        toggleToggledKeyBind2Frame()
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        handleKeyPress(input.KeyCode.Name)
    elseif input.UserInputType == Enum.UserInputType.MouseButton1 or
           input.UserInputType == Enum.UserInputType.MouseButton2 or
           input.UserInputType == Enum.UserInputType.MouseButton3 then
        handleKeyPress(input.UserInputType)
    end
end)


local ToggledWithColor = Instance.new("TextButton")
ToggledWithColor.Name = "Toggled"
ToggledWithColor.Parent = left
ToggledWithColor.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ToggledWithColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggledWithColor.Position = UDim2.new(0, 8, 0, 112)
ToggledWithColor.Size = UDim2.new(0, 9, 0, 9)
ToggledWithColor.AutoButtonColor = false  
ToggledWithColor.Text = "" 

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
}
UIGradient.Rotation = -82
UIGradient.Parent = ToggledWithColor

local TextLabel_5 = Instance.new("TextLabel")
TextLabel_5.Parent = ToggledWithColor
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(1.60000277, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 244, 0, 9)
TextLabel_5.Font = Enum.Font.SourceSansSemibold
TextLabel_5.Text = "Ambient"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

local toggledOn = false
local originalColor = Color3.fromRGB(53, 247, 248)
local falseColor = Color3.fromRGB(49, 49, 49)

local function toggleToggledWithColorFrame()
    ToggledWithColorOn = not ToggledWithColorOn
    if ToggledWithColorOn then
        ToggledWithColor.BackgroundColor3 = originalColor
        print("Toggle true")
    else
        ToggledWithColor.BackgroundColor3 = falseColor
       print("Toggle false")
    end
end

ToggledWithColor.MouseButton1Click:Connect(function()
    toggleToggledWithColorFrame()
end)

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = ToggledWithColor
ColorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColorPicker.BorderColor3 = Color3.fromRGB(18, 18, 18)
ColorPicker.Position = UDim2.new(27.6669998, 0, 0, 1)
ColorPicker.Size = UDim2.new(0, 9, 0, 9)
ColorPicker.Font = Enum.Font.SourceSans
ColorPicker.Text = ""
ColorPicker.TextColor3 = Color3.fromRGB(0, 0, 0)
ColorPicker.TextSize = 14.000

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(113, 113, 113)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_4.Rotation = -82
UIGradient_4.Parent = ColorPicker

Colorpicker1.Name = "Colorpicker1"
Colorpicker1.Parent = ColorPicker
Colorpicker1.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
Colorpicker1.BorderColor3 = Color3.fromRGB(5, 5, 5)
Colorpicker1.Position = UDim2.new(1.88699675, -5, 0, 1)
Colorpicker1.Size = UDim2.new(0, 101, 0, 120)
Colorpicker1.Visible = false
Colorpicker1.ZIndex = 1

if ColorPicker and Colorpicker1 then
    local function toggleColorpicker1()
        Colorpicker1.Visible = not Colorpicker1.Visible
    end

    ColorPicker.MouseButton1Click:Connect(function()
        toggleColorpicker1()
    end)
else
    warn("Could not find ColorPicker or Colorpicker1.")
end

ImageLabel.Parent = Colorpicker1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(10, 10, 10)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.000172227912, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 101, 0, 101)
ImageLabel.Image = "rbxassetid://18164519465"

realcolor.Name = "realcolor"
realcolor.Parent = Colorpicker1
realcolor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
realcolor.BackgroundTransparency = 1.000
realcolor.BorderColor3 = Color3.fromRGB(0, 0, 0)
realcolor.BorderSizePixel = 0
realcolor.Position = UDim2.new(0.000172227912, 0, 0.841666639, 0)
realcolor.Size = UDim2.new(0, 101, 0, 19)

Color1.Name = "Color1"
Color1.Parent = realcolor
Color1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Color1.BackgroundTransparency = 1.000
Color1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Color1.BorderSizePixel = 0
Color1.Size = UDim2.new(0, 101, 0, 19)
Color1.Font = Enum.Font.SourceSansSemibold
Color1.Text = "255, 255, 255"
Color1.TextColor3 = Color3.fromRGB(255, 255, 255)
Color1.TextSize = 14.000

UIListLayout_3.Parent = realcolor
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 10)

local UserInputService = game:GetService("UserInputService")

local function HSVtoRGB(h, s, v)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    r = math.clamp(r, 0, 1)
    g = math.clamp(g, 0, 1)
    b = math.clamp(b, 0, 1)

    return Color3.new(r, g, b)
end

local Colors = {}
local numColors = 30
for i = 1, numColors do
    local hue = (i - 1) / numColors
    local color = Color3.fromHSV(hue, 1, 1) 
    table.insert(Colors, color)
end

ImageLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        local mouse = game.Players.LocalPlayer:GetMouse()
        local position = mouse.X - ImageLabel.AbsolutePosition.X
        local totalWidth = ImageLabel.AbsoluteSize.X
        local colorIndex = math.floor(position / totalWidth * #Colors) + 1
        if colorIndex >= 1 and colorIndex <= #Colors then
            local pickedColor = Colors[colorIndex]
            if ColorPicker then
                ColorPicker.BackgroundColor3 = pickedColor
                local r, g, b = pickedColor.r, pickedColor.g, pickedColor.b
                local rgbColor = HSVtoRGB(pickedColor.r, pickedColor.g, pickedColor.b)
                Color1.Text = string.format("RGB: %d, %d, %d", math.floor(rgbColor.r * 255), math.floor(rgbColor.g * 255), math.floor(rgbColor.b * 255))

            else
                warn("ColorPicker is nil or not assigned.")
            end
        end
    end
end)

right.Name = "right"
right.Parent = Group
right.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
right.BorderColor3 = Color3.fromRGB(23, 23, 23)
right.Position = UDim2.new(0.504000008, 0, -0.0170000009, 5)
right.Size = UDim2.new(0, 280, 0, 289)
right.ZIndex = 0
right.Visible = false

RightSubTabs.Name = "RightSubTabs"
RightSubTabs.Parent = Main
RightSubTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightSubTabs.BackgroundTransparency = 1.000
RightSubTabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightSubTabs.BorderSizePixel = 0
RightSubTabs.Position = UDim2.new(0.504463255, 0, 0.123242587, 0)
RightSubTabs.Size = UDim2.new(0, 280, 0, 17)

rightSubTab.Name = "rightSubTab"
rightSubTab.Parent = RightSubTabs
rightSubTab.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
rightSubTab.BorderColor3 = Color3.fromRGB(25, 23, 25)
rightSubTab.Position = UDim2.new(0.504000068, 0, -0.00400002021, 0)
rightSubTab.Size = UDim2.new(0, 280, 0, 19)
rightSubTab.Font = Enum.Font.SourceSansSemibold
rightSubTab.Text = "Movement Exploits"
rightSubTab.TextColor3 = Color3.fromRGB(203, 203, 203)
rightSubTab.TextSize = 14.000
rightSubTab.Visible = false

UIListLayout_2.Parent = RightSubTabs
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 5)

LeftSubTabs.Name = "LeftSubTabs"
LeftSubTabs.Parent = Main
LeftSubTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftSubTabs.BackgroundTransparency = 1.000
LeftSubTabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftSubTabs.BorderSizePixel = 0
LeftSubTabs.Position = UDim2.new(0.0047613848, 0, 0.123242587, 0)
LeftSubTabs.Size = UDim2.new(0, 280, 0, 17)

LeftSubTab.Name = "LeftSubTab"
LeftSubTab.Parent = LeftSubTabs
LeftSubTab.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
LeftSubTab.BorderColor3 = Color3.fromRGB(25, 23, 25)
LeftSubTab.Position = UDim2.new(-0.00700000022, 4, -0.00400000019, 0)
LeftSubTab.Size = UDim2.new(0, 280, 0, 19)
LeftSubTab.Font = Enum.Font.SourceSansSemibold
LeftSubTab.Text = "Player Exploits"
LeftSubTab.TextColor3 = Color3.fromRGB(202, 202, 202)
LeftSubTab.TextSize = 14.000
LeftSubTab.Visible = false

UIListLayout_3.Parent = LeftSubTabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 5)

local currentLeftTab = nil
local currentRightTab = nil

local tabs = {
    { name = "Aimbot" },
    { name = "Player ESP" },
    { name = "Entity ESP" },
    { name = "Miscellaneous" },
    { name = "Settings" }
}

local SubTabs = {
    Aimbot = {
        LeftSubTab = { name = "Aimbot1", category = "Left" },
        RightSubTab = { name = "Aimbot2", category = "Right" }
    },
    ["Player ESP"] = {
        LeftSubTab = { name = "ESP1", category = "Left" },
        RightSubTab = { name = "ESP2", category = "Right" }
    },
    ["Entity ESP"] = {
        LeftSubTab = { name = "Entity1", category = "Left" },
        RightSubTab = { name = "Entity2", category = "Right" }
    },
    Miscellaneous = {
        LeftSubTab = { name = "Misc1", category = "Left" },
        RightSubTab = { name = "Misc2", category = "Right" }
    },
    Settings = {
        LeftSubTab = { name = "Settings1", category = "Left" },
        RightSubTab = { name = "Settings2", category = "Right" }
    },
    Settings = {
        LeftSubTab = { name = "Settings1", category = "Left" },
        RightSubTab = { name = "Settings2", category = "Right" }
    }
}

local function handleTabClick(tab, parent)
    print("Clicked on tab:", tab.name)
    local activeColor = Color3.fromRGB(53, 247, 248)
    local inactiveColor = Color3.fromRGB(202, 202, 202)
    if tab.TextColor3 == activeColor then
        tab.TextColor3 = inactiveColor
    else
        tab.TextColor3 = activeColor
    end
    if parent == LeftSubTabs then
        if currentLeftTab and currentLeftTab ~= tab then
            currentLeftTab.TextColor3 = inactiveColor
        end
        currentLeftTab = tab
    elseif parent == RightSubTabs then
        if currentRightTab and currentRightTab ~= tab then
            currentRightTab.TextColor3 = inactiveColor
        end
        currentRightTab = tab
    end
end

local function handleSubtabClick(subtabName, category)
    print("Clicked on subtab:", subtabName, "in category:", category)
    if category == "Left" then
        left.Visible = not left.Visible
    elseif category == "Right" then
        right.Visible = not right.Visible
    end

    local leftSubtabs = LeftSubTabs:GetChildren()
    for _, subtabButton in ipairs(leftSubtabs) do
        if subtabButton:IsA("TextButton") and subtabButton.Name == subtabName then
            if subtabButton.TextColor3 == Color3.fromRGB(53, 247, 248) then
                subtabButton.TextColor3 = Color3.fromRGB(202, 202, 202) 
            else
                subtabButton.TextColor3 = Color3.fromRGB(53, 247, 248) 
            end
            break
        end
    end
    
    local rightSubtabs = RightSubTabs:GetChildren()
    for _, subtabButton in ipairs(rightSubtabs) do
        if subtabButton:IsA("TextButton") and subtabButton.Name == subtabName then
            if subtabButton.TextColor3 == Color3.fromRGB(53, 247, 248) then
                subtabButton.TextColor3 = Color3.fromRGB(202, 202, 202) 
            else
                subtabButton.TextColor3 = Color3.fromRGB(53, 247, 248) 
            end
            break
        end
    end
end

local function createSubtabs(mainTabName)
    for _, subtab in ipairs(LeftSubTabs:GetChildren()) do
        if subtab:IsA("TextButton") then
            subtab:Destroy()
        end
    end
    
    for _, subtab in ipairs(RightSubTabs:GetChildren()) do
        if subtab:IsA("TextButton") then
            subtab:Destroy()
        end
    end

    local subtabInfoLeft = SubTabs[mainTabName].LeftSubTab
    local subtabButtonLeft = Instance.new("TextButton")
    subtabButtonLeft.Name = subtabInfoLeft.name
    subtabButtonLeft.Parent = LeftSubTabs
    subtabButtonLeft.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    subtabButtonLeft.BorderColor3 = Color3.fromRGB(25, 23, 25)
    subtabButtonLeft.Position = UDim2.new(0, 0, 0, 0)
    subtabButtonLeft.Size = UDim2.new(0, 280, 0, 19)
    subtabButtonLeft.Font = Enum.Font.SourceSansSemibold
    subtabButtonLeft.Text = subtabInfoLeft.name
    subtabButtonLeft.TextColor3 = Color3.fromRGB(202, 202, 202)
    subtabButtonLeft.TextSize = 14.000
    subtabButtonLeft.MouseButton1Click:Connect(function()
        handleSubtabClick(subtabInfoLeft.name, subtabInfoLeft.category)
    end)
    
    local subtabInfoRight = SubTabs[mainTabName].RightSubTab
    local subtabButtonRight = Instance.new("TextButton")
    subtabButtonRight.Name = subtabInfoRight.name
    subtabButtonRight.Parent = RightSubTabs
    subtabButtonRight.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    subtabButtonRight.BorderColor3 = Color3.fromRGB(25, 23, 25)
    subtabButtonRight.Position = UDim2.new(0, 0, 0, 0)
    subtabButtonRight.Size = UDim2.new(0, 280, 0, 19)
    subtabButtonRight.Font = Enum.Font.SourceSansSemibold
    subtabButtonRight.Text = subtabInfoRight.name
    subtabButtonRight.TextColor3 = Color3.fromRGB(202, 202, 202)
    subtabButtonRight.TextSize = 14.000
    subtabButtonRight.MouseButton1Click:Connect(function()
        handleSubtabClick(subtabInfoRight.name, subtabInfoRight.category)
    end)
end

for _, tabInfo in ipairs(tabs) do
    local tabButton = Instance.new("TextButton")
    tabButton.Name = "Button_" .. tabInfo.name
    tabButton.Parent = Tabbuttons
    tabButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    tabButton.BorderColor3 = Color3.fromRGB(25, 23, 25)
    tabButton.Position = UDim2.new(0, 0, 0, 0) -- Adjust position as needed
    tabButton.Size = UDim2.new(0, 110, 0, 18)
    tabButton.Font = Enum.Font.SourceSansSemibold
    tabButton.Text = tabInfo.name
    tabButton.TextColor3 = Color3.fromRGB(202, 202, 202)
    tabButton.TextSize = 14.000
    tabButton.MouseButton1Click:Connect(function()
        handleTabClick(tabButton, LeftSubTabs)
        handleTabClick(tabButton, RightSubTabs)
        createSubtabs(tabInfo.name)
    end)
end


local dragging = false
local dragStartX = 0
local originalDraggableWidth = Draggable.Size.X.Offset

local function updateDraggableFromMouse(mouseX)
    local offsetX = mouseX - SliderBack.AbsolutePosition.X
    offsetX = math.clamp(offsetX, 0, SliderBack.AbsoluteSize.X)
    Draggable.Size = UDim2.new(0, offsetX, 0, Draggable.Size.Y.Offset)
    local value = math.floor((offsetX / SliderBack.AbsoluteSize.X) * 100)
    Label.Text = "Fov Changer: " .. value
end

SliderBack.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStartX = input.Position.X
        originalDraggableWidth = Draggable.Size.X.Offset
        updateDraggableFromMouse(input.Position.X)
    end
end)

SliderBack.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updateDraggableFromMouse(input.Position.X)
    end
end)

SliderBack.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
