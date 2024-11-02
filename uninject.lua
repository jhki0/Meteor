for i,v in pairs(meteor.Modules) do
    v[2].Enabled = false
    v[2].run(false)
    for i2,v2 in pairs(v[2].setting) do

        if not(v2.id=="R:"or v2.id=="G:"or v2.id=="B:") then
            if (v2.type == "Toggle") then
                v2.run(false)
            elseif (v2.type == "Bind") then
                v2.Pressed(false)
            end
        end
    end
end
meteor.gui.mainGui:destroy()
meteor = nil