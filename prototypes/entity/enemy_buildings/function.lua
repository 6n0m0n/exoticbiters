function hive_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/hive-idle.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.3, -1.5 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/hive-idle-mask.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.3, -1.5 },
		animation_speed = 0.2,
      },
    }
  }
end

function hive_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-hive"
				}	
			}	
		}
    }
	},
  }
end

function lair_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/lair-idle.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.8, -1.5 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/lair-idle-mask.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.8, -1.5 },
		animation_speed = 0.2,
      },
    }
  }
end

function lair_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-lair"
				}	
			}	
		}
    }
	},
  }
end

function nest_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/nest-idle.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.3, -1.5 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/nest-idle-mask.png",
        width = 144,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.3, -1.5 },
		animation_speed = 0.2,
      },
    }
  }
end

function nest_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-nest"
				}	
			}	
		}
    }
	},
  }
end

function pool_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/pool-idle.png",
        width = 768 / 6,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0, -0.8 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/pool-idle-mask.png",
        width = 768 / 6,
        height = 136,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0, -0.8 },
		animation_speed = 0.2,
      },
    }
  }
end

function nursery_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/nursery-idle.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0.4, -0.3 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/nursery-idle-mask.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0.4, -0.3 },
		animation_speed = 0.2,
      },
    }
  }
end

function den_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/den-idle.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/den-idle-mask.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
    }
  }
end

function mound_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/mound-idle.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/mound-idle-mask.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
    }
  }
end

function cavern_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/cavern-idle.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/cavern-idle-mask.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
    }
  }
end

function chamber_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/chamber-idle.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/chamber-idle-mask.png",
        width = 600 / 5,
        height = 96,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0, -0.3 },
		animation_speed = 0.2,
      },
    }
  }
end

function colony2_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/colony2-idle.png",
        width = 576 / 6,
        height = 80,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.2, -0.2 },
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/colony2-idle-mask.png",
        width = 576 / 6,
        height = 80,
        frame_count = 6,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.2, -0.2 },
      },
    }
  }
end

function colony2_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-colony2"
				}	
			}	
		}
    }
	},
  }
end

function brain_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/brain-idle.png",
        width = 560 / 5,
        height = 80,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { 0.2, -0.5 },
		animation_speed = 0.3,
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/brain-idle-mask.png",
        width = 560 / 5,
        height = 80,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { 0.2, -0.5 },
		animation_speed = 0.3,
      },
    }
  }
end

function brain_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-brain"
				}	
			}	
		}
    }
	},
  }
end

function spore_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/spore-idle.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.1, -1 },
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/spore-idle-mask.png",
        width = 600 / 5,
        height = 104,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.1, -1 },
      },
    }
  }
end

function spore_spawn(data)
  return
  {

    ammo_category = "biological",
    cooldown = data.cooldown,
    range = data.range,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "instant",
			source_effects =
			{				
				{
				type = "create-entity",
				entity_name = "event-spore"
				}	
			}	
		}
    }
	},
  }
end

function enemy_drill_idle(scale, tint)
  return
  {
    layers=
    {
      {
	    filename = "__hardcorio__/graphics/entity/base/drill-idle.png",
        width = 640 / 5,
        height = 120,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
		shift = { -0.3, -0.1 },
      },
	  
	  {
        filename = "__hardcorio__/graphics/entity/base/drill-idle-mask.png",
        width = 640 / 5,
        height = 120,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 1,
        scale = scale,
        tint = tint,
		shift = { -0.3, -0.1 },
      },
    }
  }
end