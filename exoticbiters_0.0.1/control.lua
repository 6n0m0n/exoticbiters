require "defines"

game.onevent(defines.events.ontriggercreatedentity, function(event)
	if event.entity.name == "small-worm-placer" then
		local eventpos = event.entity.position
		event.entity.destroy()
		local placepos = game.findnoncollidingposition("small-worm-turret", eventpos, 10, 1)
		if placepos ~= nil then
			game.createentity{name = "small-worm-turret", position = placepos, game.forces.enemy}
		end
	--[[if event.entity.name == "small-rally" then
		local eventpos = event.entity.position
		event.entity.destroy()
		local nearby = game.findentities{{eventpos.x-100, eventpos.y-100}, {eventpos.x+100, eventpos.y+100}}
		local newgroup = game.createunitgroup(eventpos) --position not specified?
		for _,ent in ipairs(nearby) do
			if ent.subgroup == "enemies" then
				newgroup.addmember{ent}
  			end
		end
	end--]]
	elseif event.entity.name == "small-base-rally" then
		local eventpos = event.entity.position
		event.entity.destroy()
		local placepos = game.findnoncollidingposition("biter-spawner", eventpos, 10, 1)
		if placepos ~= nil then
			game.buildenemybase(placepos, 5)
		end
	elseif event.entity.name == "host-worm-placer" then
	  local eventpos = event.entity.position
	  event.entity.destroy()
	  nearby = game.findentities{{eventpos.x-1, eventpos.y-1}, {eventpos.x+1, eventpos.y+1}}
	  for _,ent in ipairs(nearby) do
			if ent.name == "gun-turret" then
				local turretpos = ent.position
				ent.destroy()
				local placepos = game.findnoncollidingposition("medium-worm-turret", turretpos, 50, 1)
 				if placepos ~= nil then
		    		game.createentity{name = "small-worm-turret", position = placepos, game.forces.enemy}
    				break
    			end
  			elseif ent.type == "assembling-machine" then
  				local assemblerpos = ent.position
  				ent.destroy()
  				local placepos = game.findnoncollidingposition("biter-spawner", turretpos, 50, 1)
 				if placepos ~= nil then
		    		game.createentity{name = "biter-spawner", position = placepos, game.forces.enemy}
    				break
    			end
  			end
  		end
	end
end)