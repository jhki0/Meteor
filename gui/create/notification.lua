local TweenService = game:GetService("TweenService")

return function(info,info2,time,parent)
    local Notification = Instance.new("Frame", parent)
    Notification["BorderSizePixel"] = 0
    Notification["BackgroundColor3"] = Color3.fromRGB(22, 8, 28)
    Notification["Size"] = UDim2.new(1, 0, 0.078, 0)
    Notification["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Notification["BackgroundTransparency"] = 1
    local Notification2 = Instance.new("Frame", Notification)
    Notification2["BorderSizePixel"] = 0
    Notification2["BackgroundColor3"] = Color3.fromRGB(22, 8, 28)
    Notification2["Size"] = UDim2.new(1, 0, 1, 0)
    Notification2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Notification2["BackgroundTransparency"] = 0.3
    Notification2["Position"] = UDim2.new(1, 0, 0, 0)
    local Text = Instance.new("TextLabel", Notification2)
    Text["TextWrapped"] = true
    Text["BorderSizePixel"] = 0
    Text["TextXAlignment"] = Enum.TextXAlignment.Left
    Text["TextScaled"] = true
    Text["BackgroundColor3"] = Color3.fromRGB(82, 64, 90)
    Text["TextSize"] = 14
    Text["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Text["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Text["Size"] = UDim2.new(1, 0, 0.2634, 0)
    Text["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Text["Text"] = "  "..info
    local Text2 = Instance.new("TextLabel", Notification2)
    Text2["TextWrapped"] = true
    Text2["BorderSizePixel"] = 0
    Text2["TextXAlignment"] = Enum.TextXAlignment.Left
    Text2["TextScaled"] = true
    Text2["BackgroundColor3"] = Color3.fromRGB(82, 64, 90)
    Text2["TextSize"] = 14
    Text2["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Text2["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Text2["BackgroundTransparency"] = 1
    Text2["Size"] = UDim2.new(1, 0, 0.2969, 0)
    Text2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Text2["Text"] = "  "..info2
    Text2["Position"] = UDim2.new(0, 0, 0.4033, 0)
    local function animateNotification()
        TweenService:Create(Notification2, TweenInfo.new(0.3), {Position = UDim2.new(0, 0, 0, 0)}):Play()
        wait(time-0.3)
        TweenService:Create(Notification2, TweenInfo.new(0.3), {Position = UDim2.new(1, 0, 0, 0)}):Play()
        wait(0.3)
        Notification:destroy()
    end
    spawn(animateNotification)
end