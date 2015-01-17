--require("prototypes.entity.demo-spawner-animation")
host_spawner_tint = {r=0.375, g=0, b=0.5625, a=0.6}

data:extend(
{
{
    type = "unit-spawner",
    name = "host-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 3000,
    order="b-b-g",
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
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
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
    {
      spawner_idle_animation(0, host_spawner_tint),
      spawner_idle_animation(1, host_spawner_tint),
      spawner_idle_animation(2, host_spawner_tint),
      spawner_idle_animation(3, host_spawner_tint)
    },
    result_units = (function()
                     local res = {}
					 res[1] = {"testbiter", {{0, 0.1}}}
					 res[2] = {"worm-host-biter", {{0, 0.1}}}
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
    autoplace =
    {
      sharpness = 0.4,
      control = "enemy-base",
      order = "b[enemy]-b[biter-spawner]-b[host-spawner]",
      richness_multiplier = 1,
      richness_base = 0,
      force = "enemy",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.425,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.5,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },
})
