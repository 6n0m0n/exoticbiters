hostworm_size = 0.5
hostworm_tint = {r=1, g=0, b=0, a=0.6}

data:extend(
{
  {
    type = "turret",
    name = "host-worm",
    icon = "__base__/graphics/icons/small-worm.png",
    flags = {"placeable-enemy", "not-repairable", "breaths-air"},
    order="b-b-d",
    max_health = 200,
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.9, -0.8 }, {0.9, 0.8}},
    selection_box = {{-0.9, -0.8 }, {0.9, 0.8}},
    shooting_cursor_size = 3,
    corpse = "small-worm-corpse",
    dying_explosion = "blood-explosion-big",
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(hostworm_size, hostworm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(hostworm_size, hostworm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(hostworm_size, hostworm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(hostworm_size, hostworm_tint, "forward"),
    starting_attack_sound =
    {
      {
        filename = "__base__/sound/creatures/worm-roar-short-1.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/worm-roar-short-2.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/worm-roar-short-3.ogg",
        volume = 0.7
      }
    },
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(hostworm_size, hostworm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(hostworm_size, hostworm_tint, "backward"),
    attack_parameters =
    {
      ammo_category = "bullet",
      cooldown = 15,
      range = 17,
      projectile_creation_distance = 1.8,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "corruption-projectile-purple",
            starting_speed = 0.5
          }
        }
      }
    },
    autoplace =
    {
      sharpness = 0.3,
      control = "enemy-base",
      order = "b[enemy]-a[base]",
      force = "enemy",
      peaks =
      {
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.31,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        {
          influence = 0.1,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 10,
          tier_from_start_top_property_limit = 10,
          tier_from_start_max_range = 20,
        }
      }
    }
  }
})