data:extend(
{
  {
    type = "unit",
    name = "testbiter",
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
     cooldown = 35,
     ammo_category = "melee",
     ammo_type = make_unit_melee_ammo_type(6),
     animation =
     {
       filename = "__base__/graphics/entity/biter/biter-attack-1.png",
       width = 139,
       height = 93,
       frame_count = 11,
       direction_count = 16,
       axially_symmetrical = false,
       shift = {0.84375, -0.3125}
     }
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
   run_animation =
   {
     filename = "__base__/graphics/entity/biter/biter-run-1.png",
     still_frame = 4,
     width = 86,
     height = 59,
     frame_count = 16,
     direction_count = 16,
     shift = {0.359375, -0.15625},
     axially_symmetrical = false
   }
 }
 })