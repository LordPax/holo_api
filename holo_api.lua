-- local comp = require("component")
-- local holo = comp.hologram

local function in_array(elem, table) -- in_array(elem:char, table:table):bool
	for k, v in pairs(table) do
		if elem == k then
			return true
		end
	end
	return false
end

holo_api = {}

-- attribut
holo_api.char = require("char")
holo_api.holo
holo_api.color = 1
holo_api.bite = {
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 1, 1, 0, 1, 1, 0},
	{1, 0, 1, 0, 1, 0, 1},
	{1, 0, 1, 0, 1, 0, 1},
	{0, 1, 1, 1, 1, 1, 0}
}

-- method
function holo_api.holo_api() -- constructor

end

function holo_api.setHolo(holo) -- setHolo(holo:table); holo = component.hologram
	holo_api.holo = holo
end

function holo_api.setChar(char) -- setChar(char:table); char = require("char")
	holo_api.char = char
end

function holo_api.setColor(c) -- setColor(c:int); 0 <= c <= 3
	holo_api.color = c
end

function holo_api.print(x, y, z, text) -- print(x:int, y:int, z:int, text:string)
	for k, v in pairs(text) do
		if in_array(v, holo_api.char) then
			holo_api.draw(x + holo_api.char.width, y, z, holo_api.char[v])
		end
	end
end

function holo_api.draw(x, y, z, table) -- draw(x:int, y:int, z:int, table:table)
	for k1, v1 in pairs(table) do
		for k2, v2 in pairs(v1) do
			if v2 == 1 then
				holo_api.holo.set(x + k2, y + k1, z, holo_api.color)
			end
		end
	end
end

function holo_api.drawRect(x, y, z, dx, dy, dz) -- drawRect(x:int, y:int, z:int, dx:int, dy:int, dz:int)
	for i = 0, dx, 1 do
		for j = 0, dy, 1 do
			for k = 0, dz, 1 do
				holo_api.holo.set(x + i, y + j, z + k, holo_api.color)
			end
		end
	end
end

return holo_api