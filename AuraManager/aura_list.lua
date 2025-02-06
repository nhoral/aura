local ADDON_NAME, ns = ...
ns.aura_list = {
    "amplify_magic_buff",
    "anti-magic_shell",
    "arcane_intellect_buff",
    "arcane_school_lockout",
    "arcane_shot",
    "aspect_of_the_hawk_buff",
    "aspect_of_the_monkey_buff",
    "avengers_shield",
    "bandage_in_inventory",
    "bash",
    "bear_form",
    "blessing_of_might_buff",
    "blinding_sleet",
    "blink",
    "bomb",
    "bomb_in_inventory",
    "can_cc_circle",
    "can_cc_cross",
    "can_cc_triangle",
    "can_interrupt_cross",
    "can_interrupt_diamond",
    "cat_form",
    "cleanse",
    "clearcasting_buff",
    "combat",
    "combat_start",
    "combo_1",
    "combo_2",
    "combo_3",
    "combo_4",
    "combo_5",
    "concussive_shot",
    "concussive_shot_debuff",
    "consecration",
    "corruption_debuff",
    "counterspell",
    "crusader_strike",
    "crusader_strike_retail",
    "curse_of_agony_debuff",
    "curse_of_weakness_debuff",
    "cursed",
    "dark_succor_buff",
    "death's_advance",
    "death_and_decay",
    "death_grip",
    "demon_skin_buff",
    "demoralizing_roar_debuff",
    "demoralizing_shout_debuff",
    "devotion_aura_buff",
    "distracting_shot",
    "divine_protection",
    "divine_protection_buff",
    "divine_shield",
    "divine_steed",
    "divine_storm",
    "empower_rune_weapon",
    "enemy_loose",
    "entangled_debuff",
    "evasion",
    "faerie_fire_debuff",
    "fingers_of_frost_buff",
    "fire_school_lockout",
    "flash_of_light",
    "forbearance_debuff",
    "frost_armor_buff",
    "frost_fever_debuff",
    "frost_nova",
    "frost_nova_debuff",
    "frost_school_lockout",
    "frostbolt_debuff",
    "frostwyrm's_fury",
    "gouge",
    "gouge_debuff",
    "growl",
    "hammer_of_justice",
    "hammer_of_the_righteous",
    "hammer_of_wrath",
    "health_under_20",
    "health_under_50",
    "health_under_75",
    "holy_power_3",
    "holy_shock",
    "humanoid_form",
    "hunter's_mark_debuff",
    "icebound_fortitude",
    "icon_circle_exists",
    "icon_cross_exists",
    "icon_diamond_exists",
    "icon_skull_exists",
    "icon_skull_seen",
    "icon_triangle_exists",
    "immolate_debuff",
    "judgment",
    "kick",
    "killing_machine_buff",
    "lay_on_hands",
    "leaving_combat",
    "lichborne",
    "lichborne_buff",
    "mana_10",
    "mana_100",
    "mana_15",
    "mana_20",
    "mana_30",
    "mana_33",
    "mana_35",
    "mana_40",
    "mana_50",
    "mana_60",
    "mana_7",
    "mana_70",
    "mana_80",
    "mana_9",
    "mana_90",
    "mark_of_the_wild_buff",
    "mind_freeze",
    "mongoose_bite",
    "moonfire_debuff",
    "nature's_grasp",
    "omen_of_clarity_buff",
    "party_1_health_under_70",
    "party_1_range_35",
    "party_2_health_under_70",
    "party_3_health_under_70",
    "party_4_health_under_70",
    "path_of_frost",
    "path_of_frost_buff",
    "pet_aggro_circle",
    "pet_aggro_triangle",
    "pet_attacking",
    "pet_attacking_circle",
    "pet_attacking_cross",
    "pet_attacking_diamond",
    "pet_attacking_skull",
    "pet_attacking_square",
    "pet_attacking_triangle",
    "pet_bite",
    "pet_combat",
    "pet_focus_15",
    "pet_focus_40",
    "pet_focus_50",
    "pet_growl",
    "pet_health_under_20",
    "pet_health_under_50",
    "pet_health_under_75",
    "pet_range_20",
    "pet_range_8",
    "pet_target_aggro",
    "pet_target_circle",
    "pet_target_cross",
    "pet_target_diamond",
    "pet_target_moon",
    "pet_target_skull",
    "pet_target_square",
    "pet_target_star",
    "pet_target_target_aggro",
    "pet_target_triangle",
    "pillar_of_frost",
    "pillar_of_frost_buff",
    "player_any_aggro",
    "player_attacking",
    "player_casting",
    "player_casting_heal",
    "player_channelling",
    "player_charmed",
    "player_dodge",
    "player_feared",
    "player_gcd",
    "player_has_pet",
    "player_magic_debuff",
    "player_moving",
    "player_not_behind_target",
    "player_rooted",
    "player_shooting",
    "player_silenced",
    "player_slowed",
    "player_stunned",
    "player_swing",
    "poisoned",
    "potion",
    "potion_in_inventory",
    "power_10",
    "power_100",
    "power_15",
    "power_20",
    "power_25",
    "power_30",
    "power_35",
    "power_40",
    "power_45",
    "power_5",
    "power_50",
    "power_60",
    "power_70",
    "power_80",
    "power_90",
    "power_word_fortitude_buff",
    "raise_ally",
    "raise_dead",
    "rake_debuff",
    "range_10",
    "range_15",
    "range_30",
    "range_35",
    "range_35_circle",
    "range_35_cross",
    "range_35_square",
    "range_8",
    "range_8_1+",
    "range_8_2+",
    "range_8_3+",
    "range_8_circle",
    "range_8_cross",
    "range_8_diamond",
    "range_8_square",
    "range_8_triangle",
    "raptor_strike",
    "razorice_debuff_5",
    "recently_bandaged_debuff",
    "regeneration",
    "rejuvenation_buff",
    "remorseless_winter",
    "rime_buff",
    "rip_debuff",
    "rocket_barrage",
    "role_toggle",
    "rune_1",
    "rune_2",
    "rune_3",
    "rune_4",
    "rune_5",
    "savage_roar",
    "scan_timeout",
    "scanner",
    "scanner_cross",
    "scanner_mk._2",
    "scanner_skull",
    "scanner_test",
    "scanner_triangle",
    "scanning",
    "seal_of_martyrdom_buff",
    "serpent_sting_debuff",
    "serpent_sting_debuff_circle",
    "serpent_sting_debuff_cross",
    "serpent_sting_debuff_square",
    "shield_of_righteousness",
    "shield_of_righteousness_retail",
    "skull_bash",
    "slice_and_dice_buff",
    "sprint",
    "stealth_buff",
    "swing_timer_at_max",
    "swing_timer_test",
    "target_aggro",
    "target_casting",
    "target_circle",
    "target_cross",
    "target_diamond",
    "target_health_under_20",
    "target_health_under_50",
    "target_health_under_75",
    "target_health_under_90",
    "target_interruptible",
    "target_interruptible_range_12",
    "target_interruptible_range_15",
    "target_is_ooc",
    "target_is_player",
    "target_moving",
    "target_securely_tanked",
    "target_skull",
    "target_triangle",
    "theiranus_dead",
    "thorns_buff",
    "threat_under_80",
    "tigers_fury_buff",
    "undead_or_mechanical",
    "wing_clip_debuff",
    "word_of_glory",
    "wraith_walk",
    "yourbutt_health_under_50",
}
