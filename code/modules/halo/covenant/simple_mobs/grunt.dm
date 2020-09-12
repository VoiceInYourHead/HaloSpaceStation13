/mob/living/simple_animal/hostile/builder_mob/cov
	name = "Unggoy Construction Worker"
	desc = "Tasked with constructing instead of fighting, they have not been provided with a weapon."
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs.dmi'
	icon_state = "grunt"
	icon_living = "grunt"
	icon_dead = "grunt_dead"
	faction = "Covenant"

/mob/living/simple_animal/hostile/covenant/grunt
	name = "Grunt (NPC)"
	icon_state = "grunt_minor"
	icon_living = "grunt_minor"
	icon_dead = "grunt_minor_dead"
	health = 120
	maxHealth = 120
/*	ranged = 1
	projectiletype = /obj/item/projectile/bullet/covenant/plasmapistol
	var/weapon1 = /obj/item/weapon/gun/energy/plasmapistol*/
	possible_weapons = list(/obj/item/weapon/gun/energy/plasmapistol, /obj/item/weapon/gun/projectile/needler)
	combat_tier = 1
	turns_per_move = 1

/mob/living/simple_animal/hostile/covenant/grunt/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(60))
		new/obj/item/ammo_magazine/m762_ap/MA5B(src.loc)
	else if(prob(49))
		new/obj/item/ammo_magazine/m127_saphp(src.loc)
	else if(prob(56))
		new/obj/item/ammo_magazine/needles(src.loc)

/mob/living/simple_animal/hostile/covenant/grunt/major
	name = "Grunt Major (NPC)"
	icon_state = "grunt_major"
	icon_living = "grunt_major"
	icon_dead = "grunt_major_dead"
	combat_tier = 2
	resistance = 5
	turns_per_move = 1

/mob/living/simple_animal/hostile/covenant/grunt/major/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(70))
		new/obj/item/ammo_magazine/m95_sap/br55(src.loc)
	else if(prob(55))
		new/obj/item/ammo_magazine/m127_saphe(src.loc)
	else if(prob(56))
		new/obj/item/ammo_magazine/needles(src.loc)

/mob/living/simple_animal/hostile/covenant/grunt/heavy
	name = "Grunt Heavy (NPC)"
	icon_state = "grunt_heavy"
	icon_living = "grunt_heavy"
	icon_dead = "grunt_heavy_dead"
	combat_tier = 3
	resistance = 5
	turns_per_move = 3
	possible_weapons = list(/obj/item/weapon/gun/energy/plasmarepeater)

/mob/living/simple_animal/hostile/covenant/grunt/heavy/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(56))
		new/obj/item/ammo_magazine/a762_box_ap(src.loc)
	else if(prob(56))
		new/obj/item/ammo_magazine/needles(src.loc)

/mob/living/simple_animal/hostile/covenant/grunt/ultra
	name = "Grunt Ultra (NPC)"
	icon_state = "grunt_ultra"
	icon_living = "grunt_ultra"
	icon_dead = "grunt_ultra_dead"
	combat_tier = 3
	resistance = 10
	turns_per_move = 2
	var/shield_left = 50
	var/shield_max = 50
	var/recharge_delay = 5 SECONDS
	var/recharge_rate = 10
	var/last_damage = 0
	var/recharging = 0

/mob/living/simple_animal/hostile/covenant/grunt/ultra/adjustBruteLoss(damage)
	last_damage = world.time
	if(recharging)
		overlays -= "shield_overlay_recharge"
		recharging = 0

	//take damage from shield first
	if(shield_left > 0)
		overlays |= "shield_overlay_damage"
		var/shield_absorbed = min(shield_left, damage)
		shield_left -= shield_absorbed
		damage -= shield_absorbed

	. = ..(damage)

/mob/living/simple_animal/hostile/covenant/grunt/ultra/Life()
	. = ..()

	//dont need to display damage any more
	overlays -= "shield_overlay_damage"

	if(stat == DEAD)
		overlays -= "shield_overlay_recharge"
	else
		//are we currently recharging?
		if(recharging)
			shield_left += recharge_rate

			//have we just finished recharging?
			if(shield_left >= shield_max)
				shield_left = shield_max
				overlays -= "shield_overlay_recharge"
				recharging = 0

		//should we start recharging?
		else if(world.time >= last_damage + recharge_delay && shield_left < shield_max)
			recharging = 1
			overlays |= "shield_overlay_recharge"

/mob/living/simple_animal/hostile/covenant/grunt/ultra/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(55))
		new/obj/item/ammo_magazine/kv32(src.loc)
	else if(prob(40))
		new/obj/item/ammo_magazine/m145_ap(src.loc)
	else if(prob(56))
		new/obj/item/ammo_magazine/needles(src.loc)