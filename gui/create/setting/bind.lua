local input = game:GetService("UserInputService")
return function(self,callback)
    local Setting_Bind = Instance.new("TextLabel", self.Expand.ScrollingFrame)
    Setting_Bind["BorderSizePixel"] = 0
    Setting_Bind["TextXAlignment"] = Enum.TextXAlignment.Left
    Setting_Bind["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Bind["TextSize"] = 20
    Setting_Bind["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Setting_Bind["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Bind["BackgroundTransparency"] = 1
    Setting_Bind["Size"] = UDim2.new(0, 0, 0.09, 0)
    Setting_Bind["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Setting_Bind["Text"] = "   "..callback["Name"].."  "
    Setting_Bind["AutomaticSize"] = Enum.AutomaticSize.X
    Setting_Bind["Name"] = callback["Name"].."_Setting_Bind"
    Setting_Bind["Position"] = UDim2.new(-0.00264, 0, 0.10369, 0)
    local Frame = Instance.new("TextButton", Setting_Bind)
    Frame["Name"] = "Frame  "
    Frame["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Frame["ZIndex"] = 9
    Frame["BorderSizePixel"] = 2
    Frame["BackgroundColor3"] = Color3.fromRGB(31, 31, 31)
    Frame["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Frame["Size"] = UDim2.new(2, 0, 0.7, 0)
    Frame["Position"] = UDim2.new(1, 0, 0.161803398, 0)
    Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Frame["Text"] = callback["Default"] or "None"
    Frame["TextScaled"] = true
    Frame["AutoButtonColor"] = false
    self.setting[callback["Name"]] = {
        id = callback["Name"],
        Frame = Setting_Bind,
        Connections = {},
        Default = callback["Default"] or "None",
        Value = callback["Default"] or "None",
        type = "Bind",
        Pressed = callback["Pressed"] or function()end,
        Visible = function(value)
            Setting_Bind["Visible"] = value
        end
    }
    local current = self.setting[callback["Name"]]
    Frame.MouseButton1Click:Connect(function()
        Frame["Text"] = "..."
        local userInput = input.InputBegan:Wait()
        if userInput.KeyCode == Enum.KeyCode.Escape or userInput.KeyCode == Enum.KeyCode.Tab or userInput.UserInputType == Enum.UserInputType.MouseButton2 or userInput.UserInputType == Enum.UserInputType.MouseButton1 or userInput.KeyCode == Enum.KeyCode.RightShift then
            Frame["Text"] = "None"
            current.Value = "None"
        else
            Frame["Text"] = userInput.KeyCode.Name
            current.Value = userInput.KeyCode
        end
    end)
    input.InputBegan:Connect(function(input)
        if input.KeyCode == current.Value then
            current.Pressed()
        end
    end)
    return current
end