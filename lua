local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local t1 = "Enter the Key"
local t2 = "You can get the key via the link in the Telegram channel @RuCoderPlace"
local t3 = "the creator's telegram channel"
local t4 = "Key"
local t5 = "The key has been successfully activated. Have a nice game"

local tg = "rbxassetid://85368333070972"
local err = "rbxassetid://7072725342"
local succ = "rbxassetid://6023426926"
local info = "rbxassetid://7072717857"
local warning = "rbxassetid://7072980286"

local function showNotification(title, text, icon, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = duration or 5
    })
end

showNotification(t1, t2, info)

task.wait(3)
showNotification(t3, t2, tg)

local function generateRandomName()
    local prefixes = {"F", "X", "Z", "K", "P", "M", "N", "R", "T", "W"}
    local numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
    local suffixes = {"x", "s", "d", "q", "w", "e", "r", "t", "y"}
    
    local name = "ScreenGui_"
    name = name .. prefixes[math.random(#prefixes)]
    
    for i = 1, math.random(2, 3) do
        name = name .. numbers[math.random(#numbers)]
    end
    
    name = name .. suffixes[math.random(#suffixes)]
    name = name .. numbers[math.random(#numbers)]
    name = name .. prefixes[math.random(#prefixes)]:lower()
    
    return name
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = generateRandomName()
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = CoreGui

local BlockingFrame = Instance.new("Frame")
BlockingFrame.Name = "BlockingFrame"
BlockingFrame.Size = UDim2.new(1, 0, 1, 0)
BlockingFrame.Position = UDim2.new(0, 0, 0, 0)
BlockingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlockingFrame.BackgroundTransparency = 0.5
BlockingFrame.BorderSizePixel = 0
BlockingFrame.ZIndex = 998
BlockingFrame.Active = true
BlockingFrame.Draggable = false
BlockingFrame.Selectable = false
BlockingFrame.Parent = ScreenGui

local BlockingCorner = Instance.new("UICorner")
BlockingCorner.CornerRadius = UDim.new(0, 0)
BlockingCorner.Parent = BlockingFrame

local Frame = Instance.new("Frame")
Frame.Name = "Frame"
Frame.Size = UDim2.new(0, 493, 0, 218)
Frame.Position = UDim2.new(0.5, -246, 0.5, -109)
Frame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.ZIndex = 999
Frame.Active = true
Frame.Draggable = false
Frame.Selectable = false
Frame.Parent = ScreenGui

local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 20, 1, 20)
Shadow.Position = UDim2.new(0, -10, 0, -10)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://6015897843"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
Shadow.ZIndex = 998
Shadow.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.Size = UDim2.new(0, 492, 0, 26)
Frame1.Position = UDim2.new(0, 0, 0, 0)
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BackgroundTransparency = 0.1
Frame1.BorderSizePixel = 0
Frame1.ZIndex = 999
Frame1.Parent = Frame

local UICorner1 = Instance.new("UICorner")
UICorner1.Name = "UICorner1"
UICorner1.CornerRadius = UDim.new(0, 5)
UICorner1.Parent = Frame1

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "TextLabel"
TextLabel.Size = UDim2.new(0, 313, 0, 19)
TextLabel.Position = UDim2.new(0.181, 0, 0.102, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.TextSize = 20
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text = "Authentication Key"
TextLabel.Font = Enum.Font.SourceSans
TextLabel.ZIndex = 1000
TextLabel.Parent = Frame1

local ImageButton = Instance.new("ImageButton")
ImageButton.Name = "ImageButton"
ImageButton.Size = UDim2.new(0, 18, 0, 18)
ImageButton.Position = UDim2.new(0.96, 0, 0.012, 0)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1
ImageButton.BorderSizePixel = 0
ImageButton.Image = "rbxassetid://132261474823036"
ImageButton.ZIndex = 1000
ImageButton.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Name = "TextBox"
TextBox.Size = UDim2.new(0, 295, 0, 45)
TextBox.Position = UDim2.new(0.202, 0, 0.395, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.BackgroundTransparency = 0.9
TextBox.Text = "Enter your key here"
TextBox.TextSize = 20
TextBox.TextColor3 = Color3.fromRGB(180, 180, 180)
TextBox.ZIndex = 1000
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner")
UICorner2.Name = "UICorner2"
UICorner2.CornerRadius = UDim.new(0, 5)
UICorner2.Parent = TextBox

local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "UIStroke"
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Thickness = 1
UIStroke.ZIndex = 1001
UIStroke.Transparency = 0.7
UIStroke.Parent = TextBox

local TextLabel1 = Instance.new("TextLabel")
TextLabel1.Name = "TextLabel1"
TextLabel1.Size = UDim2.new(0, 313, 0, 21)
TextLabel1.Position = UDim2.new(0.182, 0, 0.262, 0)
TextLabel1.BackgroundTransparency = 1
TextLabel1.BorderSizePixel = 0
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.Text = "Your Key:"
TextLabel1.TextSize = 20
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.ZIndex = 1000
TextLabel1.Parent = Frame

local ConfirmButton = Instance.new("TextButton")
ConfirmButton.Name = "ConfirmButton"
ConfirmButton.Size = UDim2.new(0, 150, 0, 35)
ConfirmButton.Position = UDim2.new(0.348, 0, 0.75, 0)
ConfirmButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
ConfirmButton.BorderSizePixel = 0
ConfirmButton.Text = "Confirm Key"
ConfirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmButton.TextSize = 18
ConfirmButton.Font = Enum.Font.SourceSans
ConfirmButton.ZIndex = 1000
ConfirmButton.Parent = Frame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 5)
UICorner3.Parent = ConfirmButton

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Size = UDim2.new(0, 450, 0, 25)
StatusLabel.Position = UDim2.new(0.045, 0, 0.65, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextSize = 16
StatusLabel.Font = Enum.Font.SourceSans
StatusLabel.ZIndex = 1000
StatusLabel.Parent = Frame

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Size = UDim2.new(0, 493, 0, 218)
LoadingFrame.Position = UDim2.new(0.5, -246, 0.5, -109)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
LoadingFrame.BackgroundTransparency = 0.1
LoadingFrame.BorderSizePixel = 0
LoadingFrame.ZIndex = 1001
LoadingFrame.Active = true
LoadingFrame.Visible = false
LoadingFrame.Parent = ScreenGui

local LoadingUICorner = Instance.new("UICorner")
LoadingUICorner.CornerRadius = UDim.new(0, 5)
LoadingUICorner.Parent = LoadingFrame

local LoadingShadow = Instance.new("ImageLabel")
LoadingShadow.Name = "LoadingShadow"
LoadingShadow.Size = UDim2.new(1, 20, 1, 20)
LoadingShadow.Position = UDim2.new(0, -10, 0, -10)
LoadingShadow.BackgroundTransparency = 1
LoadingShadow.Image = "rbxassetid://6015897843"
LoadingShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
LoadingShadow.ImageTransparency = 0.5
LoadingShadow.ScaleType = Enum.ScaleType.Slice
LoadingShadow.SliceCenter = Rect.new(10, 10, 118, 118)
LoadingShadow.ZIndex = 1000
LoadingShadow.Parent = LoadingFrame

local LoadingTitle = Instance.new("TextLabel")
LoadingTitle.Name = "LoadingTitle"
LoadingTitle.Size = UDim2.new(1, 0, 0, 40)
LoadingTitle.Position = UDim2.new(0, 0, 0, 30)
LoadingTitle.BackgroundTransparency = 1
LoadingTitle.Text = "LOADING SCRIPT"
LoadingTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingTitle.TextSize = 24
LoadingTitle.Font = Enum.Font.SourceSansBold
LoadingTitle.ZIndex = 1002
LoadingTitle.Parent = LoadingFrame

local LoadingSubText = Instance.new("TextLabel")
LoadingSubText.Name = "LoadingSubText"
LoadingSubText.Size = UDim2.new(1, 0, 0, 30)
LoadingSubText.Position = UDim2.new(0, 0, 0, 70)
LoadingSubText.BackgroundTransparency = 1
LoadingSubText.Text = "Please wait..."
LoadingSubText.TextColor3 = Color3.fromRGB(200, 200, 200)
LoadingSubText.TextSize = 18
LoadingSubText.Font = Enum.Font.SourceSans
LoadingSubText.ZIndex = 1002
LoadingSubText.Parent = LoadingFrame

local Spinner = Instance.new("ImageLabel")
Spinner.Name = "Spinner"
Spinner.Size = UDim2.new(0, 60, 0, 60)
Spinner.Position = UDim2.new(0.5, -30, 0.5, -20)
Spinner.BackgroundTransparency = 1
Spinner.Image = "rbxassetid://6023426926"
Spinner.ImageColor3 = Color3.fromRGB(0, 255, 0)
Spinner.ZIndex = 1002
Spinner.Parent = LoadingFrame

local ProgressBarBg = Instance.new("Frame")
ProgressBarBg.Name = "ProgressBarBg"
ProgressBarBg.Size = UDim2.new(0, 400, 0, 10)
ProgressBarBg.Position = UDim2.new(0.5, -200, 0, 150)
ProgressBarBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ProgressBarBg.BackgroundTransparency = 0.3
ProgressBarBg.BorderSizePixel = 0
ProgressBarBg.ZIndex = 1002
ProgressBarBg.Parent = LoadingFrame

local ProgressBarBgCorner = Instance.new("UICorner")
ProgressBarBgCorner.CornerRadius = UDim.new(0, 5)
ProgressBarBgCorner.Parent = ProgressBarBg

local ProgressBar = Instance.new("Frame")
ProgressBar.Name = "ProgressBar"
ProgressBar.Size = UDim2.new(0, 0, 1, 0)
ProgressBar.Position = UDim2.new(0, 0, 0, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ProgressBar.BorderSizePixel = 0
ProgressBar.ZIndex = 1003
ProgressBar.Parent = ProgressBarBg

local ProgressBarCorner = Instance.new("UICorner")
ProgressBarCorner.CornerRadius = UDim.new(0, 5)
ProgressBarCorner.Parent = ProgressBar

local ProgressText = Instance.new("TextLabel")
ProgressText.Name = "ProgressText"
ProgressText.Size = UDim2.new(1, 0, 0, 20)
ProgressText.Position = UDim2.new(0, 0, 0, 165)
ProgressText.BackgroundTransparency = 1
ProgressText.Text = "0%"
ProgressText.TextColor3 = Color3.fromRGB(255, 255, 255)
ProgressText.TextSize = 14
ProgressText.Font = Enum.Font.SourceSans
ProgressText.ZIndex = 1002
ProgressText.Parent = LoadingFrame

local function animateSpinner()
    local rotationTween = TweenService:Create(
        Spinner,
        TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true),
        {Rotation = 360}
    )
    rotationTween:Play()
    return rotationTween
end

local function updateProgress(percent)
    ProgressBar:TweenSize(
        UDim2.new(percent/100, 0, 1, 0),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.3,
        true
    )
    ProgressText.Text = math.floor(percent) .. "%"
end

local function loadInfiniteYieldWithIndicator()
    Frame.Visible = false
    LoadingFrame.Visible = true
    
    local spinnerAnim = animateSpinner()
    
    local progress = 0
    updateProgress(0)
    
    local progressThread = coroutine.create(function()
        while progress < 95 do
            task.wait(0.05)
            progress = progress + 1
            if progress > 95 then progress = 95 end
            updateProgress(progress)
        end
    end)
    coroutine.resume(progressThread)
    
    local success, result = pcall(function()
        local scriptContent = game:HttpGet('СЫЛЛКА НА RAW GITHUB')
---------------------ПРИМЕР 
------------------ local scriptContent = game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')
        progress = 100
        updateProgress(100)
        
        loadstring(scriptContent)()
    end)
    
    task.wait(0.5)
    
    spinnerAnim:Cancel()
    
    LoadingFrame.Visible = false
    
    if not success then
        showNotification("Error", "Failed to load admin panel", err)
        Frame.Visible = true
    else
        showNotification("Success", "НАЗВАНИЕ ТВОЕГО СКРИПТА loaded successfully!", succ)
        task.wait(1)
        ScreenGui:Destroy()
        
        task.wait(0.5)
        showNotification("Welcome!", "Have a great game!", succ)
    end
end

local function trim(str)
    return (str:gsub("^%s*(.-)%s*$", "%1"))
end

local function getLiveKeys()
    local success, result = pcall(function()
        return game:HttpGet("https://pastebin.com/raw/БАЗА ДАННЫХ С КЛЮЧАМИ ЗАМЕНИ НА СВОЙ?t=" .. tick())
    end)
    
    if not success then 
        return {} 
    end

    local keys = {} 
    for line in result:gmatch("[^\r\n]+") do 
        line = trim(line) 
        if line ~= "" then 
            table.insert(keys, line) 
        end 
    end 
    
    return keys 
end

local validKeys = getLiveKeys()
if #validKeys == 0 then
    showNotification("Key System Error", "Failed to load keys. Try again later.", err)
end

local function checkKey(inputKey)
    inputKey = trim(inputKey)
    
    for _, validKey in ipairs(validKeys) do
        if inputKey == validKey then
            return true
        end
    end
    
    return false
end

local function animateButton(button, color)
    local originalColor = button.BackgroundColor3
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local tween = TweenService:Create(button, tweenInfo, {BackgroundColor3 = color})
    tween:Play()
    
    task.wait(0.2)
    
    local tween2 = TweenService:Create(button, tweenInfo, {BackgroundColor3 = originalColor})
    tween2:Play()
end

TextBox.Focused:Connect(function()
    if TextBox.Text == "Enter your key here" then
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

TextBox.FocusLost:Connect(function(enterPressed)
    if TextBox.Text == "" then
        TextBox.Text = "Enter your key here"
        TextBox.TextColor3 = Color3.fromRGB(180, 180, 180)
    end
end)

ConfirmButton.MouseButton1Click:Connect(function()
    local inputKey = TextBox.Text

    if inputKey == "" or inputKey == "Enter your key here" then
        StatusLabel.Text = "Please enter a key!"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        animateButton(ConfirmButton, Color3.fromRGB(255, 0, 0))
        showNotification("Error", "Please enter a key!", err)
        return
    end

    StatusLabel.Text = "Checking key..."
    StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
    
    local isValid = checkKey(inputKey)
    
    if isValid then
        StatusLabel.Text = "Key activated successfully!"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        animateButton(ConfirmButton, Color3.fromRGB(0, 255, 0))
        
        showNotification(t4, t5, succ)
        
        loadInfiniteYieldWithIndicator()
        
    else
        StatusLabel.Text = "Invalid key! Please try again."
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        animateButton(ConfirmButton, Color3.fromRGB(255, 0, 0))
        showNotification("Error", "Invalid key! Please check and try again.", err)
        
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

ImageButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    showNotification("Rejoining", "Переподключение к серверу...", info, 2)
    task.wait(1)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)
