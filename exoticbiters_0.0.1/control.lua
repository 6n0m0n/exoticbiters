require "defines"

game.onevent(defines.events.onchunkgenerated, function(event)
	local lefttop = event.area.lefttop
	local rightbottom = event.area.rightbottom --lefttop.x
	local entlist = game.findentities{{lefttop.x, lefttop.y}, {rightbottom.x, rightbottom.y}}
	for i, ent in ipairs(entlist) do
		if ent.name == "biter-spawner" then
			local rand = math.random(1)
			if rand == 1 then
				local position = ent.position
				ent.destroy()
				game.createentity{name = "host-spawner", position = position, game.forces.enemy}
			end
		end
	end
end)