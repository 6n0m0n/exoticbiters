dustbiter_size = 0.5
dustbiter_tint1 = {r=0.815, g=0.565, b=0.1875, a=0.6}
dustbiter_tint2 = {r=0.375, g=0.1875, b=0, a=0.85}

data:extend(
{
  {
    type = "unit",
    name = "dustbiter",
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
     range = 0.5,
     cooldown = 0,
     ammo_category = "melee",
     ammo_type = 
      {
       category = "biological",
       target_type = "direction",
       action = 
       {
         type = "direct",
         action_delivery =
         {
           {
             type = "flame-thrower",
             explosion = "flame-thrower-explosion",
             direction_deviation = 1,
             speed_deviation = 0,
             starting_frame_deviation = 0,
             damage = { amount = 75, type = "fire"},
             projectile_starting_speed = 0.05,
             starting_distance = 0,
          }
         }
       }
       },
     animation = biterattackanimation(testbiter_size, testbiter_tint1, testbiter_tint2)
   },
   movement_speed = 0.4,
   distance_per_frame = 0.2,
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
   run_animation = biterrunanimation(testbiter_size, testbiter_tint1, testbiter_tint2)
 }
 })