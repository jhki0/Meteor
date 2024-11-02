return function(self,callback)
    local Setting_Number = Instance.new("TextLabel", self.Expand.ScrollingFrame)
    Setting_Number["ZIndex"] = 3
    Setting_Number["BorderSizePixel"] = 0
    Setting_Number["TextXAlignment"] = Enum.TextXAlignment.Left
    Setting_Number["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Number["TextSize"] = 20
    Setting_Number["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Setting_Number["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Number["BackgroundTransparency"] = 1
    Setting_Number["Size"] = UDim2.new(0, 0, 0.09, 0)
    Setting_Number["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Setting_Number["Text"] = "   "..callback["Name"].."  "
    Setting_Number["AutomaticSize"] = Enum.AutomaticSize.X
    Setting_Number["Name"] = callback["Name"].."_Setting_Number"
    Setting_Number["Position"] = UDim2.new(-0.00264, 0, 0.10369, 0)
    local Textbox = Instance.new("TextBox", Setting_Number)
    Textbox["Name"] = "Textbox"
    Textbox["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Textbox["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Textbox["BorderSizePixel"] = 2
    Textbox["TextXAlignment"] = Enum.TextXAlignment.Center
    Textbox["TextWrapped"] = true
    Textbox["TextSize"] = 17
    Textbox["BackgroundColor3"] = Color3.fromRGB(31, 31, 31)
    Textbox["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Textbox["ClearTextOnFocus"] = false
    Textbox["Size"] = UDim2.new(2, 0, 0.7, 0)
    Textbox["Position"] = UDim2.new(1, 0, 0.161803398, 0)
    Textbox["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Textbox["Text"] =  tostring(string.format("%.3f", tonumber(callback["Default"])))


    self.setting[callback["Name"]] = {
        id = callback["Name"],
        Enabled = false,
        Frame = Setting_Number,
        Default =  string.format("%.3f", tonumber(callback["Default"])) or tonumber(Textbox["Text"]) or 1.000,
        Connections = {},
        Value = string.format("%.3f", tonumber(callback["Default"])) or tonumber(Textbox["Text"]) or 1.000,
        type = "Number",
        Visible = function(value)
            Setting_Number["Visible"] = value
        end
    }
    local current = self.setting[callback["Name"]]
    current.update = function ()
        if tonumber(Textbox["Text"]) then
            local value = string.format("%.3f", tonumber(Textbox["Text"]))
            current.Value = value
            Textbox["Text"] = value
        else
             current.Value = string.format("%.3f", tonumber(callback["Default"]))
            Textbox["Text"] = string.format("%.3f", tonumber(callback["Default"]))
        end
    end
    Textbox.FocusLost:Connect(function()
        current.update()
    end)    
    return current
end