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
   attack_parameters =
   {
     range = 0.5,
     cooldown = 35,
     ammo_category = "melee",
     ammo_type = make_unit_melee_ammo_type(6),
     animation =
     {
       filename = "__base__/graphics/entity/small-biter/small-biter-attack.png",
       frame_width = 139,
       frame_height = 93,
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
   corpse = "small-biter-corpse",
   dying_sound =
   {
     {
       filename = "__base__/sound/creeper-death-1.wav",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creeper-death-2.wav",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creeper-death-3.wav",
       volume = 0.7
     },
     {
       filename = "__base__/sound/creeper-death-4.wav",
       volume = 0.7
     }
   },
   run_animation =
   {
     filename = "__base__/graphics/entity/small-biter/small-biter-run.png",
     still_frame = 4,
     frame_width = 86,
     frame_height = 59,
     frame_count = 16,
     direction_count = 16,
     shift = {0.359375, -0.15625},
     axially_symmetrical = false
   }
 }