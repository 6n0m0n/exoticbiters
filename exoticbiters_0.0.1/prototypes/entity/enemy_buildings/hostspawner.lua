data:extend(
{
{
    type = "unit-spawner",
    name = "host-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 3000,
    order="s-a",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "acid",
        percent = 50
      },
	  {
        type = "physical",
        percent = 50,
      },
	  {
        type = "fire",
		    percent = 50,
      },
	  {
        type = "explosion",
        percent = 50
      }
    },
		loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "alien-artifact",
        probability = 0.15
      },
    },
    healing_per_tick = 0.1,
    collision_box = {{-1.2, -1}, {1.2, 1}},
    selection_box = {{-1.2, -1}, {1.2, 1}},
	shooting_cursor_size = 4,
    pollution_cooldown =100,
    ---dying_explosion = "new-blood-explosion-huge",
	dying_sound =
    {
      {
        filename = "__base__/sound/creatures/worm-roar-long-1.ogg",
        volume = 0.7
      }
    },
    max_count_of_owned_units = 5,
    max_friends_around_to_spawn = 40,
    animations =
    { layers =
      {
        filename = "__base__/graphics/entity/spawner/spawner-idle.png",
        line_length = 8,
        width = 166,
        height = 148,
        frame_count = 32,
        axially_symmetrical = false,
        direction_count = 4,
        shift = {-0.34375, -0.375},

    },

    {
      filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
      line_length = 8,
      width = 166,
      height = 148,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 4,
      shift = {-0.34375, -0.375},
  }
},
    result_units = (function()
                     local res = {}
					 res[1] = {"testbiter", {{0, 0.1}}}
					 res[2] = {"testbiter", {{0.2, 0.0},{1, 0.09}}}
					 res[3] = {"testbiter", {{0.2, 0.0},{1, 0.08}}}
					 res[4] = {"testbiter", {{0.3, 0.0},{1, 0.07}}}
					 res[5] = {"testbiter", {{0.4, 0.0},{1, 0.06}}}
					 res[6] = {"testbiter", {{0.5, 0.0},{1, 0.05}}}
					 res[7] = {"testbiter", {{0.6, 0.0},{1, 0.04}}}
					 res[8] = {"testbiter", {{0.7, 0.0},{1, 0.03}}}
					 res[9] = {"testbiter", {{0.8, 0.0},{1, 0.02}}}
					 res[10] = {"testbiter", {{0.9, 0.0},{1, 0.01}}}
                     return res
                   end)(),
    spawning_cooldown = {900, 160},
    spawning_radius = 10,
    spawning_spacing = 1,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
  },
})
