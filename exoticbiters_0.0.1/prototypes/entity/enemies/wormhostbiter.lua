wormhostbiter_size = 0.5
wormhostbiter_tint1 = {r=0, g=0, b=0, a=0.6}
wormhostbiter_tint2 = {r=0, g=0, b=0, a=0.85}

data:extend(
{
  {
    type = "unit",
    name = "worm-host-biter",
    icon = "__base__/graphics/icons/creeper.png",
   flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
   max_health = 15,
   healing_per_tick = 0.01,
   collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
   selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
   subgroup="enemies",
   order = "b-b-d",
   sticker_box = {{-1.2, -2.4}, {1.2, 0.5}},
   attack_parameters =
   {
     range = 15,
     cooldown = 35,
     warmup = 100,
     --ammo_category = "melee",
     animation = biterattackanimation(wormhostbiter_size, wormhostbiter_tint1, wormhostbiter_tint2),
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
              entity_name = "small-worm-placer"
            },
            {
              type = "damage",
              damage = { amount = 30, type = "explosion"}
            }
          }
        }
      }
      },
    },
   movement_speed = 0.2,
   distance_per_frame = 0.1,
   pollution_to_join_attack = 200,
   distraction_cooldown = 300,
   vision_distance = 30,
   corpse = "small-biter-corpse",
   dying_sound =
   {
     {
       filename = "__base__/sound/creatures/creeper-death-1.ogg",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creatures/creeper-death-2.ogg",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creatures/creeper-death-3.ogg",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creatures/creeper-death-4.ogg",
       volume = 0.7
     }
   },
   run_animation = biterrunanimation(wormhostbiter_size, wormhostbiter_tint1, wormhostbiter_tint2)
 }
 })