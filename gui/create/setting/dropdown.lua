local TweenService = game:GetService("TweenService")
local function Length(Table)
    local counter = 0 
    for _ in pairs(Table) do
        counter = counter + 1
    end
    return counter
end

return function(self,callback)
    local List_count = Length(callback["List"])
    local dropdown_expand = false
    local Setting_Dropdown = Instance.new("TextLabel", self.Expand.ScrollingFrame)
    Setting_Dropdown["BorderSizePixel"] = 0
    Setting_Dropdown["TextXAlignment"] = Enum.TextXAlignment.Left
    Setting_Dropdown["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Dropdown["TextSize"] = 20
    Setting_Dropdown["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Setting_Dropdown["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Dropdown["BackgroundTransparency"] = 1
    Setting_Dropdown["Size"] = UDim2.new(0, 0, 0.09, 0)
    Setting_Dropdown["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Setting_Dropdown["Text"] = "   "..callback["Name"].."  "
    Setting_Dropdown["AutomaticSize"] = Enum.AutomaticSize.X
    Setting_Dropdown["Name"] = callback["Name"].."_Setting_Dropdown"
    Setting_Dropdown["Position"] = UDim2.new(-0.00264, 0, 0.10369, 0)
    local Frame = Instance.new("TextButton", Setting_Dropdown)
    Frame["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Frame["ZIndex"] = 9
    Frame["BorderSizePixel"] = 2
    Frame["BackgroundColor3"] = Color3.fromRGB(31, 31, 31)
    Frame["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Frame["Size"] = UDim2.new(2, 0, 0.7, 0)
    Frame["Position"] = UDim2.new(1, 0, 0.161803398, 0)
    Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Frame["Text"] = callback["Default"] or callback["List"][1] or ":braindead:"
    Frame["TextScaled"] = true
    Frame["AutoButtonColor"] = false
    local Frame2 = Instance.new("Frame", Frame)
    Frame2["ZIndex"] = 10
    Frame2["BorderSizePixel"] = 2
    Frame2["BackgroundColor3"] = Color3.fromRGB(31, 31, 31)
    Frame2["Size"] = UDim2.new(1, 0, 0, 0)
    Frame2["Position"] = UDim2.new(0, 0, 1, 0)
    Frame2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Frame2["ClipsDescendants"] = true
    Frame2["Visible"] = false
    local UIListLayout = Instance.new("UIListLayout", Frame2)
    UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder

    self.setting[callback["Name"]] = {
        id = callback["Name"],
        Default = callback["Default"] or callback["List"][1] or ":braindead:",
        Frame = Setting_Dropdown,
        Connections = {},
        Value = Frame["Text"],
        type = "Dropdown",
        Visible = function(value)
            Setting_Dropdown["Visible"] = value
        end
    }
    local current = self.setting[callback["Name"]]
    current.update = function()
        Frame["Text"] = current.Value
    end
    for i,v in pairs(callback["List"]) do
        local TextButton = Instance.new("TextButton", Frame2)
        TextButton["TextWrapped"] = true
        TextButton["BorderSizePixel"] = 0
        TextButton["TextSize"] = 14
        TextButton["TextColor3"] = Color3.fromRGB(255, 255, 255)
        TextButton["TextScaled"] = true
        TextButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
        TextButton["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        TextButton["ZIndex"] = 11
        TextButton["Size"] = UDim2.new(1, 0, 0, 15)
        TextButton["BackgroundTransparency"] = 1
        TextButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        TextButton["Text"] = tostring(v)
        TextButton.MouseButton1Click:Connect(function() 
            Frame["Text"],current.Value = TextButton["Text"],TextButton["Text"]
            dropdown_expand = not dropdown_expand
            if dropdown_expand then
                TweenService:Create(Frame2,TweenInfo.new(0.1),{Size = UDim2.new(1, 0, 0, Frame["AbsoluteSize"].Y * List_count), Visible = true}):Play()
            else 
                TweenService:Create(Frame2,TweenInfo.new(0.1), {Size = UDim2.new(1, 0, 0, 0), Visible = false}):Play()
                
            end
        end)
    end
    Frame.MouseButton1Click:Connect(function() 
        dropdown_expand = not dropdown_expand
        if dropdown_expand then
            TweenService:Create(Frame2,TweenInfo.new(0.1),{Size = UDim2.new(1, 0, 0, Frame["AbsoluteSize"].Y * List_count), Visible = true}):Play()
        else 
            TweenService:Create(Frame2,TweenInfo.new(0.1), {Size = UDim2.new(1, 0, 0, 0), Visible = false}):Play()
            
        end
    end)
    return current
end