local setting = {}
setting.toggle = loadfile("meteor/gui/create/setting/toggle.lua")()
setting.number = loadfile("meteor/gui/create/setting/number.lua")()
setting.dropdown = loadfile("meteor/gui/create/setting/dropdown.lua")()
setting.color = loadfile("meteor/gui/create/setting/color.lua")()
setting.bind = loadfile("meteor/gui/create/setting/bind.lua")()
return setting