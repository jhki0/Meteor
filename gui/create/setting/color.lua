return function(self,callback)
    local Setting_Color = Instance.new("TextLabel", self.Expand.ScrollingFrame)
    Setting_Color["ZIndex"] = 3
    Setting_Color["BorderSizePixel"] = 0
    Setting_Color["TextXAlignment"] = Enum.TextXAlignment.Left
    Setting_Color["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Color["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Setting_Color["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Setting_Color["BackgroundTransparency"] = 1
    Setting_Color["Size"] = UDim2.new(0, 0, 0.09, 0)
    Setting_Color["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Setting_Color["Text"] = "   "..callback["Name"].."  "
    Setting_Color["AutomaticSize"] = Enum.AutomaticSize.X
    Setting_Color["Name"] = callback["Name"].."_Setting_Colorpicker"
    Setting_Color["Position"] = UDim2.new(-0.00264, 0, 0.10369, 0)
    Setting_Color["TextScaled"] = true
    Setting_Color["Visible"] = true
    local Button = Instance.new("ImageButton", Setting_Color)
    Button["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Button["BorderSizePixel"] = 2
    Button["BackgroundColor3"] = callback["Color3"] or Color3.fromRGB(0, 0, 0)
    Button["Size"] = UDim2.new(0.7, 0, 0.7, 0)
    Button["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Button["BackgroundTransparency"] = 0
    Button["Name"] = [[Button]]
    Button["Position"] = UDim2.new(1, 0, 0.161803398, 0)
    Button["AutoButtonColor"] = false
    local Button2 = Instance.new("ImageButton", Setting_Color)
    Button2["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
    Button2["BorderSizePixel"] = 2
    Button2["BackgroundColor3"] =  Color3.fromRGB(30, 30, 30)
    Button2["Size"] = UDim2.new(0.7, 0, 0.7, 0)
    Button2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Button2["BackgroundTransparency"] = 0
    Button2["Name"] = [[Button2]]
    Button2["Position"] = UDim2.new(1.2, 0, 0.161803398, 0)
    Button2["AutoButtonColor"] = false
    local Frame = Instance.new("Frame", Button)
    Frame["Interactable"] = false
    Frame["BorderSizePixel"] = 0
    Frame["BackgroundColor3"] = Color3.fromRGB(145, 61, 226)
    Frame["Size"] = UDim2.new(0, 0, 0, 0)
    Frame["Position"] = UDim2.new(0.5, 0, 0.5, 0)
    Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    local Colorpicker_expand = Instance.new("TextButton", self.Expand)
    Colorpicker_expand["Active"] = false
    Colorpicker_expand["BorderSizePixel"] = 0
    Colorpicker_expand["TextSize"] = 24
    Colorpicker_expand["TextColor3"] = Color3.fromRGB(255, 255, 255)
    Colorpicker_expand["BackgroundColor3"] = Color3.fromRGB(146, 62, 227)
    Colorpicker_expand["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Colorpicker_expand["AnchorPoint"] = Vector2.new(0.5, 0)
    Colorpicker_expand["Size"] = UDim2.new(0, 300, 0, 25)
    Colorpicker_expand["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Colorpicker_expand["Text"] = [[   Select Color   ]]
    Colorpicker_expand["Position"] = UDim2.new(0.468, 0, 12, 0)
    Colorpicker_expand["Visible"] = false
    Colorpicker_expand["AutoButtonColor"] = false
    local ScrollingFrame = Instance.new("ScrollingFrame", Colorpicker_expand)
    ScrollingFrame["Active"] = true
    ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
    ScrollingFrame["SizeConstraint"] = Enum.SizeConstraint.RelativeXX
    ScrollingFrame["BorderSizePixel"] = 0
    ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 0, 0)
    ScrollingFrame["TopImage"] = [[]]
    ScrollingFrame["MidImage"] = [[]]
    ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(21, 21, 21)
    ScrollingFrame["BottomImage"] = [[]]
    ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
    ScrollingFrame["Size"] = UDim2.new(1, 0, 0.88, 0)
    ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
    ScrollingFrame["Position"] = UDim2.new(0, 0, 0.96464, 0)
    ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    ScrollingFrame["ScrollBarThickness"] = 0
    ScrollingFrame["BackgroundTransparency"] = 0.4
    local UIListLayout = Instance.new("UIListLayout", ScrollingFrame)
    UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
    local Frame2 = Instance.new("Frame", ScrollingFrame)
    Frame2["BorderSizePixel"] = 0
    Frame2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Frame2["AutomaticSize"] = Enum.AutomaticSize.X
    Frame2["Size"] = UDim2.new(1, 0, 0.62781, 5)
    Frame2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Frame2["Name"] = [[line]]
    Frame2["BackgroundTransparency"] = 1
    local Picker = Instance.new("ImageLabel", Frame2)
    Picker["BackgroundColor3"] = Color3.fromRGB(0, 255, 0)
    Picker["Image"] = [[rbxassetid://2615689005]]
    Picker["Size"] = UDim2.new(0, 243, 0, 150)
    Picker["BorderColor3"] = Color3.fromRGB(28, 43, 54)
    Picker["Name"] = [[Picker]]
    Picker["Position"] = UDim2.new(0.09333, 0, 0.04142, 0)
    Hue = Instance.new("ImageLabel", Frame2)
    Hue["BackgroundColor3"] = Color3.fromRGB(249, 249, 249)
    Hue["AnchorPoint"] = Vector2.new(1, 0)
    Hue["Image"] = [[rbxassetid://2615692420]]
    Hue["Size"] = UDim2.new(0, 10, 0, 149)
    Hue["BorderColor3"] = Color3.fromRGB(28, 43, 54)
    Hue["Name"] = [[Hue]]
    Hue["Position"] = UDim2.new(0.957, 0, 0.041, 0)
    local white, black = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
    local colors = {Color3.new(1, 0, 0), Color3.new(1, 1, 0), Color3.new(0, 1, 0), Color3.new(0, 1, 1), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 0, 0)}
    if not callback["Color3"] then callback["Color3"] = Color3.new(0,0,0) end
    local R = self:create_setting_number({
        Name = "R:",
        Default = callback["Color3"].r
    })
    local G = self:create_setting_number({
        Name = "G:",
        Default = callback["Color3"].g
    })
    local B = self:create_setting_number({
        Name = "B:",
        Default = callback["Color3"].b
    })
    Hue.InputBegan:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local percent = (input.Position.Y-Hue.AbsolutePosition.y)/Hue.AbsoluteSize.Y
            local num = math.max(1, math.min(7,math.floor(((percent*7+0.5)*100))/100))
            local startC = colors[math.floor(num)]
            local endC = colors[math.ceil(num)]
            Picker.BackgroundColor3 = startC:lerp(endC, num-math.floor(num)) or Color3.new(0, 0, 0)
        end
    end)
    self.setting[callback["Name"]] = {
        id = callback["Name"],
        Frame = Setting_Color,
        Connections = {},
        Default = callback["Color3"] or Color3.fromRGB(0, 0, 0),
        Value = callback["Color3"] or Color3.fromRGB(0, 0, 0),
        type = "Color",
        Visible = function(value)
            Setting_Color["Visible"] = value
        end
    }
    local current = self.setting[callback["Name"]]
    current.update = function ()
        Button.BackgroundColor3 = current.Value
    end
    Picker.InputBegan:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local xPercent = (input.Position.X-Picker.AbsolutePosition.X)/Picker.AbsoluteSize.X
            local yPercent = (input.Position.Y-Picker.AbsolutePosition.Y)/Picker.AbsoluteSize.Y
            local color = white:lerp(Picker.BackgroundColor3, xPercent):lerp(black, yPercent)
            Button.BackgroundColor3 = color
            R.Value = color.r*255
            G.Value = color.g*255
            B.Value = color.b*255
            current.Value = color
            R["Frame"]["Textbox"]["Text"] = tostring(color.r*255)
            G["Frame"]["Textbox"]["Text"] = tostring(color.g*255)
            B["Frame"]["Textbox"]["Text"] = tostring(color.b*255)
        end
    end)
    R["Frame"]["Textbox"]["FocusLost"]:Connect(function()
        task.wait(0.1)
        Button.BackgroundColor3 = Color3.new(R.Value/255, G.Value/255, B.Value/255)
    end)

    G["Frame"]["Textbox"]["FocusLost"]:Connect(function()
        task.wait(0.1)
        Button.BackgroundColor3 = Color3.new(R.Value/255, G.Value/255, B.Value/255)
    end)

    B["Frame"]["Textbox"]["FocusLost"]:Connect(function()
        task.wait(0.1)
        Button.BackgroundColor3 = Color3.new(R.Value/255, G.Value/255, B.Value/255)
    end)
    R["Frame"]["Parent"] = ScrollingFrame
    G["Frame"]["Parent"] = ScrollingFrame
    B["Frame"]["Parent"] = ScrollingFrame
    Button2.MouseButton1Click:Connect(function()
        Colorpicker_expand["Visible"] = not Colorpicker_expand["Visible"]
    end)
    return current
end