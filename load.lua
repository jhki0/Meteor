local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- if _G.DaiyaInjected then error("DaiyaUI is already injected") end
loadfile("meteor/gui/init.lua")()
_G.meteorInjected = true

meteor.gui.create.create_main()
local Modules = meteor.gui.create.create_setting("Modules") 
local Config = meteor.gui.create.create_setting("Config")
local GUI = meteor.gui.create.create_setting("GUI")
local HUD = meteor.gui.create.create_setting("HUD") 
local Friends = meteor.gui.create.create_setting("Friends")
local Macros = meteor.gui.create.create_setting("Macros")
local Profiles = meteor.gui.create.create_setting("Profiles")
loadfile("meteor/game.lua")()
meteor.Loaded = true
meteor.gui.create.notification("Loaded","Meteor has been loaded",2,meteor.gui.Notification)


loadfile("meteor/config/load.lua")()
test = ""
while meteor.Loaded do
    for i,v in pairs(meteor.Modules) do
        test = test.."1£"..v[1].."£"..v[2].id.."£"..tostring(v[2].Enabled).."\n"
        for i2,v2 in pairs(v[2].setting) do
            if not(v2.id=="R:"or v2.id=="G:"or v2.id=="B:") and v2.Value ~= v2.Default then
                if (v2.type == "Toggle") then
                    test = test.."2£"..v2.id.."£"..tostring(v2.Value).."\n"
                elseif (v2.type == "Bind") then
                    test = test.."3£"..v2.id.."£"..v2.Value.Name.."\n"
                elseif (v2.type == "Color") then
                    test = test.."4£"..v2.id.."£"..tostring(v2.Value).."\n"
                elseif (v2.type == "Number") then
                    test = test.."5£"..v2.id.."£"..tostring(v2.Value).."\n"
                elseif (v2.type == "Dropdown") then
                    test = test.."6£"..v2.id.."£"..v2.Value.."\n"
                end
            end
        end
    end
    test = test:sub(1, -2)
    writefile("meteor/config/"..tostring(game.PlaceId),test)
    test = ""
    task.wait(5)
end
