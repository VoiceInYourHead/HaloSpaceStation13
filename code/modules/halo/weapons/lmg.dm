


//M739 Light Machine Gun

/obj/item/weapon/gun/projectile/m739_lmg
	name = "\improper M739 Light Machine Gun"
	desc = "Standard-issue squad automatic weapon, designed for use in heavy engagements. Takes 7.62mm calibre ordinary and box type magazines."
	icon = 'code/modules/halo/weapons/icons/Weapon Sprites.dmi'
	icon_state = "M739"
	item_state = "SAW"
	caliber = "a762"
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a762_box_ap
	allowed_magazines = list(/obj/item/ammo_magazine/a762_box_ap) //Disallows loading normal ma5b mags into the LMG.
	fire_sound = 'code/modules/halo/sounds/Assault_Rifle_Short_Burst_New.wav'
	reload_sound = 'code/modules/halo/sounds/UNSC_Saw_Reload_Sound_Effect.ogg'
	one_hand_penalty = -1
	is_heavy = 1
	hud_bullet_row_num = 50
	hud_bullet_reffile = 'code/modules/halo/icons/hud_display/hud_bullet_2x5.dmi'
	//burst = 5
	//burst_delay = 1
	//burst_accuracy = list(0, 0, -1, -1, -1, -2, -2, -2, -3, -3, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3,0)
	//dispersion = list(1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.5)
	w_class = ITEM_SIZE_HUGE
	firemodes = list(
		list(mode_name="4-round bursts", burst=4, fire_delay=null, move_delay=6,    burst_accuracy=list(0,-1,1),       dispersion=list(0.0, 0.6, 0.6)),
		list(mode_name="short bursts", 	burst=6, fire_delay=null, move_delay=6,    burst_accuracy=list(2,1,-1,-2,3), dispersion=list(0.6, 1.0, 1.5, 1.5, 1.9)),
		list(mode_name="semi-auto", 	burst=1, fire_delay=null, move_delay=6,    burst_accuracy=list(1), dispersion=list(0.0)),
		)

	wielded_item_state = "SAW-wielded"
	item_icons = list(
		slot_l_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_left.dmi',
		slot_r_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_right.dmi',
		)
	move_delay_malus = 1
	slowdown_general = 1

	//sustain_time = 4.5 SECONDS
	//sustain_delay = 1.5

/obj/item/weapon/gun/projectile/m739_lmg/update_icon()
	if(ammo_magazine)
		icon_state = "M739"
	else
		icon_state = "M739_unloaded"
	. = ..()

/obj/item/weapon/gun/projectile/m739_lmg/lmg30cal
	name = "\improper .30 Caliber Light Machine Gun"
	desc = "A light machine gun."
	icon = 'code/modules/halo/weapons/icons/Weapon Sprites.dmi'
	icon_state = "Innie 30cal LMG - Full Closed"
	item_state = "30cal"
	caliber = "a762"
	slot_flags = 0	//too unwieldy to carry on your back
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/lmg_30cal_box_ap
	allowed_magazines = list(/obj/item/ammo_magazine/lmg_30cal_box_ap)
	//fire_sound = 'code/modules/halo/sounds/MagnumShotSoundEffect.ogg'
	reload_sound = 'code/modules/halo/sounds/UNSC_Saw_Reload_Sound_Effect.ogg'
	hud_bullet_reffile = 'code/modules/halo/icons/hud_display/hud_bullet_2x5.dmi'
	handle_casings = CASELESS
	one_hand_penalty = -1
	firemodes = list(
		list(mode_name="4-round bursts", burst=4, fire_delay=null, move_delay=6,    burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 0.6)),
		list(mode_name="short bursts", 	burst=6, fire_delay=null, move_delay=6,    burst_accuracy=list(-1,1,-2,-2,-3), dispersion=list(0.6, 1.0, 1.5, 1.5, 1.9)),
		list(mode_name="semi-auto", 	burst=1, fire_delay=null, move_delay=6,    burst_accuracy=list(1), dispersion=list(0.0)),
		)
	//burst = 5
	//burst_delay = 1
	//burst_accuracy = list(0, 0, -1, -1, -1, -2, -2, -2, -3, -3, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3,0)
	//dispersion = list(1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.5)

	sustain_time = 4.5 SECONDS
	sustain_delay = 1.5

	w_class = ITEM_SIZE_HUGE
	item_icons = list(
		slot_l_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_left.dmi',
		slot_r_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_right.dmi',
		)


/obj/item/weapon/gun/projectile/m739_lmg/lmg30cal/update_icon()
	. = ..()
	if(ammo_magazine)
		icon_state = "Innie 30cal LMG - Full Closed"
	else
		icon_state = "Innie 30cal LMG - Empty Open"

//Bit of handling for the loading states.
/obj/item/weapon/gun/projectile/m739_lmg/lmg30cal/load_ammo(var/item/I,var/mob/user)
	icon_state = "Innie 30cal LMG - Empty Open"
	sleep(2)
	. = ..()

/obj/item/weapon/gun/projectile/m739_lmg/lmg30cal/unload_ammo(var/mob/user,var/allow_dump = 0)
	icon_state = "Innie 30cal LMG - Full Open"
	sleep(2)
	. = ..()
