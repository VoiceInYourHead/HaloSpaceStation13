
/obj/item/weapon/gun/energy/plasmarepeater
	name = "Type-51 Directed Energy Rifle"
	desc = "Also known as the \"Plasma Repeater\", this weapon fires long bursts of superheated plasma. A unique ventilation and cooling system gives it a reversed dispersion and accuracy profile."
	icon = 'code/modules/halo/icons/Covenant Weapons.dmi'
	icon_state = "PlasmaRepeater"
	item_state = "PlasmaRepeater"//Need an inhand sprite. Plasrifle used as placeholder.
	w_class = ITEM_SIZE_HUGE
	fire_sound = 'code/modules/halo/sounds/plasrifle3burst.ogg'
	projectile_type = /obj/item/projectile/bullet/covenant/plasmarepeater
	slot_flags = SLOT_BACK
	one_hand_penalty = -1
	//burst = 6
	max_shots = 250
	//burst_delay = 1
	charge_meter = 0
//	burst_accuracy = list(0, 0, 1, -1, 1, -2, 2, -2, 3, 3, 0, 0, -1, 1, 1, -2, 2, -2, 3, -3, 0, 0, -1, 1, 1, 2, -2, -2, -3, 3, 0)
//	dispersion = list(0.0, 1.1, 1.2, 0.0, 0.0, 1.5, 1.3, 1.4, 1.5, 0.0, 1.7, 1.8, 1.5, 1.6, 0.0, 0.0, 0.0, 2.0, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 0.0, 2.0, 2.1, 2.2, 0.0, 0.0, 0.0, 2.5)
	w_class = ITEM_SIZE_HUGE
	irradiate_non_cov = 15
	move_delay_malus = 1
	hud_bullet_usebar = 1
	salvage_components = list(/obj/item/plasma_core)
	slowdown_general = 1
	firemodes = list(
		list(mode_name="6-round bursts", burst=6, fire_delay=null, move_delay=8,    burst_accuracy=list(0,-1,1),       dispersion=list(0.0, 0.6, 0.6)),
		list(mode_name="short bursts", 	burst=4, fire_delay=null, move_delay=5,    burst_accuracy=list(2,1,-1,-2,3), dispersion=list(0.6, 1.0, 1.5, 1.5, 1.9)),
		list(mode_name="semi-auto", 	burst=1, fire_delay=null, move_delay=2,    burst_accuracy=list(1), dispersion=list(0.0)),
		)

	//Due to reverse acc. and disp. profile, this might be more powerful than the others.//
	sustain_time = 4.5 SECONDS
	sustain_delay = 1.5


/obj/item/weapon/gun/energy/plasmarepeater/proc/cov_plasma_recharge_tick()
	if(max_shots > 0)
		if(power_supply.charge < power_supply.maxcharge)
			power_supply.give(charge_cost)
			update_icon()
			return 1