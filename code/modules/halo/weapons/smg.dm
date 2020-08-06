
#define CLEAR_CASINGS 1
#define CASELESS 4

//M7 submachine gun

/obj/item/weapon/gun/projectile/m7_smg
	name = "M7 submachine gun"
	desc = "The M7/Caseless Submachine Gun is a fully automatic close quarters infantry and special operations weapon. Takes 5mm calibre magazines."
	icon = 'code/modules/halo/weapons/icons/Weapon Sprites.dmi'
	icon_state = "m7smg"
	item_state = "m7"
	caliber = "5mm"
	slot_flags = SLOT_BACK|SLOT_BELT
	fire_sound = 'code/modules/halo/sounds/SMG_Mini_Burst_Sound_Effect.ogg'
	//fire_sound_burst = 'code/modules/halo/sounds/SMG_Short_Burst_Sound_Effect.ogg'
	reload_sound = 'code/modules/halo/sounds/SMG_Reload_New.wav'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m5
	handle_casings = CASELESS
	//burst = 4
	//burst_delay = 1.4
	//burst_accuracy = list(0,0,0,-1)
	//dispersion = list(0.0, 0.4, 0.8, 1.0)
	allowed_magazines = list(/obj/item/ammo_magazine/m5, /obj/item/ammo_magazine/m5/rubber)
	w_class = ITEM_SIZE_NORMAL
	hud_bullet_row_num = 20
	item_icons = list(
		slot_l_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_left.dmi',
		slot_r_hand_str = 'code/modules/halo/weapons/icons/Weapon_Inhands_right.dmi',
		slot_back_str = 'code/modules/halo/weapons/icons/Back_Weapons.dmi',
		slot_s_store_str = 'code/modules/halo/weapons/icons/Armor_Weapons.dmi',
		slot_belt_str = 'code/modules/halo/weapons/icons/Belt_Weapons.dmi',
		)

	firemodes = list(
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 0.6)),
		list(mode_name="short bursts", 	burst=5, fire_delay=null, move_delay=6,    burst_accuracy=list(-1,-1,-2,-2,-3), dispersion=list(0.6, 1.0, 1.5, 1.5, 1.9)),
		list(mode_name="semi-auto", 	burst=1, fire_delay=null, move_delay=6,    burst_accuracy=list(0.4), dispersion=list(0.0)),
		)

/obj/item/weapon/gun/projectile/m7_smg/update_icon()
	if(ammo_magazine)
		icon_state = "m7smg"
	else
		icon_state = "m7smg_unloaded"
	. = ..()

/obj/item/weapon/gun/projectile/m7_smg/silenced
	name = "M7S submachine gun"
	desc = "The M7S is a special operations variant of the M7 submachine gun with inbuilt suppressor and host of other attachments. Takes 5mm calibre magazines."
	silenced = 1
	icon_state = "m7smgs"
	item_state = "m7"
	fire_sound = 'code/modules/halo/sounds/SMG_SOCOM_Fire.wav'
	//fire_sound_burst = 'code/modules/halo/sounds/SMG_SOCOM_Fire.wav'

/obj/item/weapon/gun/projectile/m7_smg/silenced/update_icon()
	if(ammo_magazine)
		icon_state = "m7smgs"
	else
		icon_state = "m7smgs_unloaded"

/obj/item/weapon/gun/projectile/m7_smg/rubber
	magazine_type = /obj/item/ammo_magazine/m5/rubber
