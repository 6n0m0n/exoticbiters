require "defines"

--[[function wormhostattack(wormhost)
  local hostpos = wormhost.position
  wormhost.destroy()
  local placepos = game.findnoncollidingposition("small-worm-turret", hostpos, 10, 1)
  if placepos ~= nil then
    game.createentity{name = "small-worm-turret", position = placepos, game.forces.enemy}
  end
end--]]

game.onevent(defines.events.onentitydied, function(event)
	if event.entity.name == "worm-host-biter" then
		local deathpos = event.entity.position
		nearby = game.findentities{{deathpos.x-10, deathpos.y-10}, {deathpos.x+10, deathpos.y+10}}
		for _,ent in ipairs(nearby) do
			if ent.name == "small-worm-placer" then
				ent.destroy()
				local placepos = game.findnoncollidingposition("small-worm-turret", deathpos, 50, 1)
 				if placepos ~= nil then
		    		game.createentity{name = "small-worm-turret", position = placepos, game.forces.enemy}
  				end
  			end
		end
	end
end)