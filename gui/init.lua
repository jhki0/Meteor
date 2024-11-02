local uilibrary = assert(getgenv, "Your exploit is not supported")()

local function useMethods(module)
    for name, method in pairs(module) do
        if method then
            uilibrary[name] = method
        end
    end
end
local function randomString()
    local randomlength = math.random(10,100)
    local result = ""
    for i = 1, randomlength do
        result = result .. string.char(math.random(32, 126))
    end
    return result
end
local TweenService = game:GetService("TweenService")
local input = game:GetService("UserInputService")

uilibrary.gui = {catalog = {}}
uilibrary.catalog = {}
uilibrary.Modules = {}
uilibrary.gui.create = loadfile("meteor/gui/create/load.lua")()

uilibrary.gui.create.create_main = function()
    local Gui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    Gui["Name"] = randomString()
    Gui["ZIndexBehavior"] = Enum.ZIndexBehavior.Global
    Gui["DisplayOrder"] = 100
    Gui["ResetOnSpawn"] = false
    Gui["IgnoreGuiInset"] = true
    local Main = Instance.new("Frame", Gui)
    Main["BorderSizePixel"] = 0
    Main["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Main["Size"] = UDim2.new(1, 0, 1, 0)
    Main["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Main["Name"] = [[Main]]
    Main["BackgroundTransparency"] = 1
    Main["Visible"] = false
    local Catalog = Instance.new("Frame", Main)
    Catalog["SizeConstraint"] = Enum.SizeConstraint.RelativeXX
    Catalog["BorderSizePixel"] = 0
    Catalog["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Catalog["Size"] = UDim2.new(1, 0, 0.017, 0)
    Catalog["Position"] = UDim2.new(0, 0, -0.00127, 0)
    Catalog["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Catalog["Name"] = "Catalog"
    Catalog["BackgroundTransparency"] = 1
    Catalog["Visible"] = false
    local Expand = Instance.new("Frame", Main)
    Expand["BorderSizePixel"] = 0
    Expand["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Expand["Size"] = UDim2.new(0, 0, 1, 0)
    Expand["Position"] = UDim2.new(0.5, 0, 0, 0)
    Expand["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Expand["Name"] = [[Expand]]
    Expand["Visible"] = false
    local Notification = Instance.new("Frame", Gui)
    Notification["BorderSizePixel"] = 0
    Notification["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    Notification["Size"] = UDim2.new(-0.10134,0, 0.89975, 0)
    Notification["Position"] = UDim2.new(1, 0, 0, 0)
    Notification["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    Notification["Name"] = [[Notification]]
    Notification["BackgroundTransparency"] = 1
    local UIListLayout = Instance.new("UIListLayout", Notification)
    UIListLayout["Padding"] = UDim.new(0.01, 0)
    UIListLayout["VerticalAlignment"] = Enum.VerticalAlignment.Bottom
    UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
    
    uilibrary.gui.mainGui = Gui
    uilibrary.gui.Notification = Notification
    uilibrary.gui.Expand = Expand

    input.InputBegan:Connect(function(input)
        if uilibrary.Loaded then
            if input.KeyCode == Enum.KeyCode.LeftShift then
                Catalog.Visible = not Catalog.Visible
                Expand.Visible = not Expand.Visible
                Main.Visible = not Main.Visible
            end
        end
    end)
    local UIListLayout = Instance.new("UIListLayout", Catalog)
    UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
    UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
    UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
    uilibrary.gui.create.create_setting = function(id)
        local TextButton = Instance.new("TextButton", Catalog)
        TextButton["Name"] = id     
        TextButton["TextWrapped"] = true
        TextButton["LineHeight"] = 0.94
        TextButton["BorderSizePixel"] = 0
        TextButton["TextSize"] = 14
        TextButton["TextColor3"] = Color3.fromRGB(255, 255, 255)
        TextButton["TextScaled"] = true
        TextButton["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
        TextButton["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        TextButton["AutomaticSize"] = Enum.AutomaticSize.X
        TextButton["Size"] = UDim2.new(0, 0, 0.671, 0)
        TextButton["BackgroundTransparency"] = 0.3
        TextButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        TextButton["Text"] = " "..id.." "
        TextButton["Position"] = UDim2.new(0.37063, 0, 0, 0)
        TextButton["AutoButtonColor"] = false
        local TextButton2 = Instance.new("TextButton", TextButton)
        TextButton2["TextWrapped"] = true
        TextButton2["LineHeight"] = 0.94
        TextButton2["BorderSizePixel"] = 0
        TextButton2["TextSize"] = 14
        TextButton2["TextColor3"] = Color3.fromRGB(255, 255, 255)
        TextButton2["TextScaled"] = true
        TextButton2["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
        TextButton2["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        TextButton2["Size"] = UDim2.new(1, 0, 0.22283, 0)
        TextButton2["BackgroundTransparency"] = 0.3
        TextButton2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        TextButton2["Text"] = ""
        TextButton2["Position"] = UDim2.new(0, 0, 1, 0)
        TextButton2["AutoButtonColor"] = false

        uilibrary.catalog[id] = {
            id = id,
            run = nil,
            Enabled = false,
            Connections = {},
            type = "Module",
            Expand = Expand,
            setting = {},
            Enable = nil,
            keybind = "None",
            Toggle = function ()
                if id == "Modules" then
                    
                end
            end
        }
        local current = uilibrary.catalog[id]
        TextButton.MouseButton1Click:Connect(function()

        end)
        TextButton2.MouseEnter:Connect(function()
            TweenService:Create(TextButton,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
            TweenService:Create(TextButton2,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
        end)
        TextButton.MouseEnter:Connect(function()
            TweenService:Create(TextButton,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
            TweenService:Create(TextButton2,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
        end)
        TextButton2.MouseLeave:Connect(function()
            TweenService:Create(TextButton,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
            TweenService:Create(TextButton2,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
        end)
        TextButton.MouseLeave:Connect(function()
            TweenService:Create(TextButton,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
            TweenService:Create(TextButton2,TweenInfo.new(0.1),{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
        end)
        if id == "Modules" then
            local Module_catalog_list = Instance.new("Frame", Main)
            Module_catalog_list["BorderSizePixel"] = 0
            Module_catalog_list["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
            Module_catalog_list["Size"] = UDim2.new(0, -5, 0, 719)
            Module_catalog_list["Position"] = UDim2.new(0.01, 0, 0.076, 0)
            Module_catalog_list["BorderColor3"] = Color3.fromRGB(0, 0, 0)
            Module_catalog_list["Name"] = [[Modules]]
            Module_catalog_list["BackgroundTransparency"] = 1
            local UIListLayout = Instance.new("UIListLayout", Module_catalog_list)
            UIListLayout["Padding"] = UDim.new(1, 0)
            UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
            UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
            uilibrary.gui.create.create_module_catalog = function(id)
                local Module_catalog = Instance.new("TextButton", Module_catalog_list)
                Module_catalog["Name"] = id
                Module_catalog["BorderSizePixel"] = 0
                Module_catalog["TextSize"] = 24
                Module_catalog["TextColor3"] = Color3.fromRGB(255, 255, 255)
                Module_catalog["BackgroundColor3"] = Color3.fromRGB(146, 62, 227)
                Module_catalog["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                Module_catalog["AutomaticSize"] = Enum.AutomaticSize.X
                Module_catalog["Size"] = UDim2.new(0, 0, 0.035, 0)
                Module_catalog["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                Module_catalog["Text"] = "    "..id.."    "
                Module_catalog["Position"] = UDim2.new(0.67657, 0, 0.03168, 0)
                Module_catalog["AutoButtonColor"] = false
                local Module_catalog_ScrollingFrame = Instance.new("ScrollingFrame", Module_catalog)
                Module_catalog_ScrollingFrame["Active"] = true
                Module_catalog_ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
                Module_catalog_ScrollingFrame["BorderSizePixel"] = 0
                Module_catalog_ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 0, 0)
                Module_catalog_ScrollingFrame["TopImage"] = [[]]
                Module_catalog_ScrollingFrame["MidImage"] = [[]]
                Module_catalog_ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                Module_catalog_ScrollingFrame["BottomImage"] = [[]]
                Module_catalog_ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
                Module_catalog_ScrollingFrame["AutomaticSize"] = Enum.AutomaticSize.X
                Module_catalog_ScrollingFrame["Size"] = UDim2.new(1, 0, 26.3523, 0)
                Module_catalog_ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
                Module_catalog_ScrollingFrame["Position"] = UDim2.new(0, 0, 1, 0)
                Module_catalog_ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                Module_catalog_ScrollingFrame["ScrollBarThickness"] = 0
                Module_catalog_ScrollingFrame["BackgroundTransparency"] = 1
                Module_catalog_UIListLayout = Instance.new("UIListLayout", Module_catalog_ScrollingFrame)
                Module_catalog_UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
                uilibrary.gui.catalog[id] = {

                }
                uilibrary.gui.catalog[id].ScrollingFrame = Module_catalog_ScrollingFrame
                uilibrary.gui.catalog[id].Modules = {}
                uilibrary.gui.catalog[id].create_module = function(self,callback)
                    local Module = Instance.new("TextButton", self.ScrollingFrame)
                    Module["BorderSizePixel"] = 0   
                    Module["TextXAlignment"] = Enum.TextXAlignment.Center
                    Module["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
                    Module["TextSize"] = 20
                    Module["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                    Module["TextColor3"] = Color3.fromRGB(255, 255, 255)
                    Module["BackgroundTransparency"] = 0.5
                    Module["RichText"] = true
                    Module["Size"] = UDim2.new(1, 0, 0.03793, 0)
                    Module["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Module["Text"] = "  "..callback["Name"].."  "
                    Module["AutomaticSize"] = Enum.AutomaticSize.X
                    Module["AutoButtonColor"] = false
                    Module["ZIndex"] = 1
                    local Module_toggle = Instance.new("Frame", Module)
                    Module_toggle["BorderSizePixel"] = 0
                    Module_toggle["BackgroundColor3"] = Color3.fromRGB(146, 62, 227)
                    Module_toggle["Size"] = UDim2.new(0, 2.5, 0, 0)
                    Module_toggle["Position"] = UDim2.new(0, 0, 1, 0)
                    Module_toggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Module_toggle["ZIndex"] = 2
                    local Module_toggle2 = Instance.new("Frame", Module)
                    Module_toggle2["BorderSizePixel"] = 0
                    Module_toggle2["BackgroundColor3"] = Color3.fromRGB(190, 190, 190)
                    Module_toggle2["BackgroundTransparency"] = 0    
                    Module_toggle2["Size"] = UDim2.new(0, 0, 1, 0)
                    Module_toggle2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Module_toggle2["ZIndex"] = 0
                    local Expand = Instance.new("TextButton", uilibrary.gui.Expand)
                    Expand["Active"] = false
                    Expand["BorderSizePixel"] = 0
                    Expand["AutoButtonColor"] = false
                    Expand["TextSize"] = 24
                    Expand["TextColor3"] = Color3.fromRGB(255, 255, 255)
                    Expand["BackgroundColor3"] = Color3.fromRGB(146, 62, 227)
                    Expand["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                    Expand["AnchorPoint"] = Vector2.new(0.5, 0)
                    Expand["Size"] = UDim2.new(0, 600, 0, 25)
                    Expand["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Expand["Text"] = "  "..callback["Name"].."  "
                    Expand["Position"] = UDim2.new(0, 0, 0.1, 0)
                    Expand["Visible"] = false
                    Expand_ScrollingFrame = Instance.new("ScrollingFrame", Expand)
                    Expand_ScrollingFrame["Name"] = "ScrollingFrame"
                    Expand_ScrollingFrame["Active"] = true
                    Expand_ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
                    Expand_ScrollingFrame["BorderSizePixel"] = 0
                    Expand_ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 0, 0)
                    Expand_ScrollingFrame["TopImage"] = [[]]
                    Expand_ScrollingFrame["MidImage"] = [[]]
                    Expand_ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(21, 21, 21)
                    Expand_ScrollingFrame["BottomImage"] = [[]]
                    Expand_ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
                    Expand_ScrollingFrame["AutomaticSize"] = Enum.AutomaticSize.X
                    Expand_ScrollingFrame["Size"] = UDim2.new(1, 0, 0.4, 0)
                    Expand_ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
                    Expand_ScrollingFrame["Position"] = UDim2.new(0, 0, 0.965, 0)
                    Expand_ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Expand_ScrollingFrame["ScrollBarThickness"] = 0
                    Expand_ScrollingFrame["BackgroundTransparency"] = 0.4
                    Expand_ScrollingFrame["SizeConstraint"] = Enum.SizeConstraint.RelativeXX
                    local UIListLayout = Instance.new("UIListLayout", Expand_ScrollingFrame)
                    UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Left
                    UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
                    local Module_Lore = Instance.new("TextLabel", Expand_ScrollingFrame)
                    Module_Lore["BorderSizePixel"] = 0
                    Module_Lore["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                    Module_Lore["TextSize"] = 20
                    Module_Lore["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                    Module_Lore["TextColor3"] = Color3.fromRGB(255, 255, 255)
                    Module_Lore["BackgroundTransparency"] = 1
                    Module_Lore["Size"] = UDim2.new(0, 400, 0.1, 0)
                    Module_Lore["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Module_Lore["Text"] = "   "..callback["Lore"]
                    Module_Lore["TextXAlignment"] = Enum.TextXAlignment.Left
                    Module_Lore["AutomaticSize"] = Enum.AutomaticSize.X
                    Module_Lore["Position"] = UDim2.new(0.2449, 0, -0.00138, 0)
                    local Line = Instance.new("Frame", Expand_ScrollingFrame)
                    Line["BorderSizePixel"] = 0
                    Line["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                    Line["AutomaticSize"] = Enum.AutomaticSize.X
                    Line["Size"] = UDim2.new(1, 0, 0, 15)
                    Line["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Line["Name"] = [[line]]
                    Line["BackgroundTransparency"] = 1
                    local Line2 = Instance.new("Frame", Line)
                    Line2["BorderSizePixel"] = 0
                    Line2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                    Line2["AutomaticSize"] = Enum.AutomaticSize.X
                    Line2["Size"] = UDim2.new(0.96, 0, 0, 1)
                    Line2["Position"] = UDim2.new(0.02, 0, 0.5, 0)
                    Line2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Line2["Name"] = [[line2]]
                    local UIGradient = Instance.new("UIGradient", Line2)
                    UIGradient["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(201, 201, 201)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))}

                    callback["Function"] = callback["Function"] or function()end

                    self.Modules[callback["Name"]] = {
                        id = callback["Name"],
                        run = callback["Function"],
                        Enabled = false,
                        mainframe = Module,
                        Connections = {},
                        type = "Module",
                        Expand = Expand,
                        setting = {},
                        update = nil
                    }
                    
                    local current = self.Modules[callback["Name"]]

                    uilibrary.Modules[callback["Name"]] = {id,current}

                    -- Module.MouseButton1Click:Connect(function()
                    --     current.Enabled = not current.Enabled
                    --     if current.Enabled then
                    --         TweenService:Create(Module_toggle,TweenInfo.new(0.3),{Size = UDim2.new(0, 2.5, -1, 0)}):Play()
                    --     else 
                    --         TweenService:Create(Module_toggle,TweenInfo.new(0.3), {Size = UDim2.new(0, 2.5, 0, 0)}):Play()
                    --     end
                    --     callback["Function"](current.Enabled)
                    -- end)
                    local Line3 = Instance.new("Frame",current.Expand.ScrollingFrame)
                    Line3["BorderSizePixel"] = 0
                    Line3["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                    Line3["AutomaticSize"] = Enum.AutomaticSize.X
                    Line3["Size"] = UDim2.new(1, 0, 0, 15)
                    Line3["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Line3["Name"] = [[lineA]]
                    Line3["BackgroundTransparency"] = 1
                    Line3["LayoutOrder"] = 100
                    local Line4 = Instance.new("Frame", Line3)
                    Line4["BorderSizePixel"] = 0
                    Line4["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                    Line4["AutomaticSize"] = Enum.AutomaticSize.X
                    Line4["Size"] = UDim2.new(0.96, 0, 0, 1)
                    Line4["Position"] = UDim2.new(0.02, 0, 0.5, 0)
                    Line4["BorderColor3"] = Color3.fromRGB(0, 0, 0)
                    Line4["Name"] = [[line2]]
                    local UIGradient = Instance.new("UIGradient", Line4)
                    UIGradient["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(201, 201, 201)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))}

                    
                    Module.MouseButton2Click:Connect(function()
                        current.Expand.Visible = not current.Expand.Visible
                    end)
                    Module.MouseEnter:Connect(function()
                        TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(1, 0, 1, 0)}):Play()
                    end)
                    Module.MouseLeave:Connect(function()
                        if not current.Enabled then
                            TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(0, 0, 1, 0)}):Play()
                        end
                    end)

                    current.create_setting_toggle = uilibrary.gui.create.setting.toggle
                    current.create_setting_number = uilibrary.gui.create.setting.number
                    current.create_setting_dropdown = uilibrary.gui.create.setting.dropdown
                    current.create_setting_color = uilibrary.gui.create.setting.color
                    current.create_setting_bind = uilibrary.gui.create.setting.bind
                    local Active = current:create_setting_toggle({
                        Name = "Active:",
                        Function = function(callback2)
                            current.Enabled = callback2
                            if current.Enabled then
                                TweenService:Create(Module_toggle,TweenInfo.new(0),{Size = UDim2.new(0, 2.5, -1, 0)}):Play()
                                TweenService:Create(Module_toggle2,TweenInfo.new(0),{Size = UDim2.new(1, 0, 1, 0)}):Play()
                            else
                                TweenService:Create(Module_toggle,TweenInfo.new(0), {Size = UDim2.new(0, 2.5, 0, 0)}):Play()
                                TweenService:Create(Module_toggle2,TweenInfo.new(0),{Size = UDim2.new(0, 0, 1, 0)}):Play()
                        end
                        callback["Function"](current.Enabled)
                    end})
                    Active.Frame["LayoutOrder"] = 103
                    local Bind = current:create_setting_bind({
                        Name = "Bind:",
                        Pressed = function()
                            current.Enabled = not current.Enabled
                            callback["Function"](current.Enabled)
                            if current.Enabled then
                                TweenService:Create(Module_toggle,TweenInfo.new(0.3),{Size = UDim2.new(0, 2.5, -1, 0)}):Play()
                                TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0.1),{Size = UDim2.new(0.7, 0, 0.7, 0), Position = UDim2.new(0.15, 0, 0.15, 0)}):Play()
                                TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(1, 0, 1, 0)}):Play()
                                uilibrary.gui.create.notification(callback["Name"],"Enabled this Module",2,Notification)
                            else
                                TweenService:Create(Module_toggle,TweenInfo.new(0.3), {Size = UDim2.new(0, 2.5, 0, 0)}):Play()
                                TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0.1), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
                                TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(0, 0, 1, 0)}):Play()
                                uilibrary.gui.create.notification(callback["Name"],"Disabled this Module",2,Notification)
                            end
                            Active.Enabled = current.Enabled
                    end})
                    Bind.Frame["LayoutOrder"] = 102
                    Module.MouseButton1Click:Connect(function()
                        current.Enabled = not current.Enabled
                        if current.Enabled then
                            TweenService:Create(Module_toggle,TweenInfo.new(0.3),{Size = UDim2.new(0, 2.5, -1, 0)}):Play()
                            TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(1, 0, 1, 0)}):Play()
                            TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0),{Size = UDim2.new(0.7, 0, 0.7, 0), Position = UDim2.new(0.15, 0, 0.15, 0)}):Play()
                        else 
                            TweenService:Create(Module_toggle,TweenInfo.new(0.3), {Size = UDim2.new(0, 2.5, 0, 0)}):Play()
                            TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(0, 0, 1, 0)}):Play()
                            TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
                        end
                        callback["Function"](current.Enabled)
                    end)
                    current.update = function()
                        if current.Enabled then
                            Active.Enabled = true
                            TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0),{Size = UDim2.new(0.7, 0, 0.7, 0), Position = UDim2.new(0.15, 0, 0.15, 0)}):Play()
                            TweenService:Create(Module_toggle,TweenInfo.new(0.3),{Size = UDim2.new(0, 2.5, -1, 0)}):Play()
                            TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(1, 0, 1, 0)}):Play()
                        else 
                            TweenService:Create(Module_toggle,TweenInfo.new(0.3), {Size = UDim2.new(0, 2.5, 0, 0)}):Play()
                            TweenService:Create(Module_toggle2,TweenInfo.new(0.3),{Size = UDim2.new(0, 0, 1, 0)}):Play()
                            TweenService:Create(Active.Frame.Button.Frame,TweenInfo.new(0), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
                        end
                    end
                    return current
                end
            end
        end
        local Expand = Instance.new("TextButton", uilibrary.gui.Expand)
        Expand["Name"] = "catalog-"..id
        Expand["BorderSizePixel"] = 0
        Expand["AutoButtonColor"] = false
        Expand["TextSize"] = 24
        Expand["TextColor3"] = Color3.fromRGB(255, 255, 255)
        Expand["BackgroundColor3"] = Color3.fromRGB(146, 62, 227)
        Expand["FontFace"] = Font.new([[rbxassetid://12187370747]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        Expand["AnchorPoint"] = Vector2.new(0.5, 0)
        Expand["Size"] = UDim2.new(0, 600, 0, 25)
        Expand["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        Expand["Text"] = "  "..id.."  "
        Expand["Position"] = UDim2.new(0, 0, 0.1, 0)
        Expand["Visible"] = false
        Expand_ScrollingFrame = Instance.new("ScrollingFrame", Expand)
        Expand_ScrollingFrame["Name"] = "ScrollingFrame"
        Expand_ScrollingFrame["Active"] = true
        Expand_ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
        Expand_ScrollingFrame["BorderSizePixel"] = 0
        Expand_ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 0, 0)
        Expand_ScrollingFrame["TopImage"] = [[]]
        Expand_ScrollingFrame["MidImage"] = [[]]
        Expand_ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(21, 21, 21)
        Expand_ScrollingFrame["BottomImage"] = [[]]
        Expand_ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
        Expand_ScrollingFrame["AutomaticSize"] = Enum.AutomaticSize.X
        Expand_ScrollingFrame["Size"] = UDim2.new(1, 0, 0.4, 0)
        Expand_ScrollingFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
        Expand_ScrollingFrame["Position"] = UDim2.new(0, 0, 0.965, 0)
        Expand_ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        Expand_ScrollingFrame["ScrollBarThickness"] = 0
        Expand_ScrollingFrame["BackgroundTransparency"] = 0.4
        Expand_ScrollingFrame["SizeConstraint"] = Enum.SizeConstraint.RelativeXX
        local UIListLayout = Instance.new("UIListLayout", Expand_ScrollingFrame)
        UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Left
        UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
        current["Expand"] = Expand
        current.create_setting_toggle = uilibrary.gui.create.setting.toggle
        current.create_setting_number = uilibrary.gui.create.setting.number
        current.create_setting_dropdown = uilibrary.gui.create.setting.dropdown
        current.create_setting_color = uilibrary.gui.create.setting.color
        current.create_setting_bind = uilibrary.gui.create.setting.bind
        return current
    end
end

useMethods({meteor=uilibrary})


