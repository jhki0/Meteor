local placeId = tostring(game.PlaceId)
loadfile("meteor/game/All.lua")()
for i,v in pairs(listfiles("meteor/game")) do
    if string.find(v, placeId) then
        for i,v in pairs(listfiles(v)) do
            print(v,"a")
            loadfile(v)()
        end
    else
		if not string.find(v, " - ") and not string.find(v, ".lua") then
			for i2,v2 in pairs(listfiles(v)) do
                if string.find(v2, placeId) then
                    for i3,v3 in pairs(listfiles(v2)) do
                        print(v3,"a")
                        loadfile(v3)()
                    end
                end
			end
		end
    end 
end