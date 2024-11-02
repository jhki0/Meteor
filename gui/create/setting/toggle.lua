local TweenService = game:GetService("TweenService")
return function(self,callback)
    local Setting_Toggle = Instance.new("TextLabel", self.Expand.ScrollingFrame)
    Setting_Toggle["ZIndex"] = 3
    Setting_Toggle["BorderSizePixel"] = 0
    Setting_Toggle["TextXAlignment"] = Enum.TextXAlignment.Left
    Setting_Toggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Toggle["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Setting_Toggle["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Toggle["BackgroundTransparency"] = 1
    Setting_Toggle["Size"] = UDim2.new(0, 0, 0.09, 0)
    Setting_Toggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Setting_Toggle["Text"] = "   "..callback["Name"].."  "
    Setting_Toggle["AutomaticSize"] = Enum.AutomaticSize.X
    Setting_Toggle["Name"] = callback["Name"].."_Setting_Toggle"
    Setting_Toggle["Position"] = UDim2.new(-0.00264, 0, 0.10369, 0)
    Setting_Toggle["TextScaled"] = true
    Setting_Toggle["Visible"] = true
    local Button = Instance.new("ImageButton", Setting_Toggle)
    Button["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Button["BorderSizePixel"] = 2
    Button["BackgroundColor3"] = Color3.fromRGB(30, 30, 30)
    Button["Size"] = UDim2.new(0.7, 0, 0.7, 0)
    Button["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Button["BackgroundTransparency"] = 0
    Button["Name"] = [[Button]]
    Button["Position"] = UDim2.new(1, 0, 0.161803398, 0)
    Button["AutoButtonColor"] = false
    local Frame = Instance.new("Frame", Button)
    Frame["Interactable"] = false
    Frame["BorderSizePixel"] = 0
    Frame["BackgroundColor3"] = Color3.fromRGB(145, 61, 226)
    Frame["Size"] = UDim2.new(0, 0, 0, 0)
    Frame["Position"] = UDim2.new(0.5, 0, 0.5, 0)
    Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)

    self.setting[callback["Name"]] = {
        id = callback["Name"],
        Default = callback["Default"] or false,
        Value = callback["Default"] or false,
        run = callback["Function"] or function()end,
        Frame = Setting_Toggle,
        Connections = {},
        type = "Toggle",
        update = nil,
        Visible = function(value)
            Setting_Toggle["Visible"] = value
        end
    }
    local current = self.setting[callback["Name"]]
    current.update = function()
        if current.Value then
            TweenService:Create(Frame,TweenInfo.new(0.1),{Size = UDim2.new(0.7, 0, 0.7, 0), Position = UDim2.new(0.15, 0, 0.15, 0)}):Play()
        else 
            TweenService:Create(Frame,TweenInfo.new(0.1), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
        end
    end
    Button.MouseButton1Click:Connect(function() 
        current.Value = not current.Value
        current.update()
        current.run(current.Value)
    end)
    Button.MouseEnter:Connect(function() TweenService:Create(Button,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(39, 39, 39)}):Play() end)
    Button.MouseLeave:Connect(function() if not current.Value then TweenService:Create(Button,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(21, 21, 21)}):Play() end end)
    return current
end