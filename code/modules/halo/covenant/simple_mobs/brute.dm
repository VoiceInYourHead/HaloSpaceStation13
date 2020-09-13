/mob/living/simple_animal/hostile/covenant/brute
	name = "Brute Minor (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 200
	maxHealth = 200
	combat_tier = 3
	resistance = 10
	icon_state = "minor"
	icon_living = "minor"
	icon_dead = "minor_dead"
	possible_weapons = list(/obj/item/weapon/gun/projectile/mauler,/obj/item/weapon/gun/projectile/spiker)
	turns_per_move = 3
	possible_grenades = list(/obj/item/weapon/grenade/frag/spike)

/mob/living/simple_animal/hostile/covenant/brute/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()

/mob/living/simple_animal/hostile/covenant/brute/major
	name = "Brute Major (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 200
	maxHealth = 200
	combat_tier = 3
	resistance = 10
	icon_state = "major"
	icon_living = "major"
	icon_dead = "major_dead"
	possible_weapons = list(/obj/item/weapon/gun/projectile/fuel_rod_launcher,/obj/item/weapon/gun/projectile/spiker,/obj/item/weapon/gun/projectile/type51carbine)
	turns_per_move = 5

/mob/living/simple_animal/hostile/covenant/brute/major/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()

/mob/living/simple_animal/hostile/covenant/brute/capt
	name = "Brute Capitan (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 250
	maxHealth = 250
	combat_tier = 3
	resistance = 10
	icon_state = "capt"
	icon_living = "capt"
	icon_dead = "capt_dead"
	possible_weapons = list(/obj/item/weapon/gun/projectile/spiker,/obj/item/weapon/gun/projectile/turret/plas/detached,/obj/item/weapon/gun/launcher/grenade/brute_shot)
	turns_per_move = 5

/mob/living/simple_animal/hostile/covenant/brute/capt/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()

/mob/living/simple_animal/hostile/covenant/brute/chief
	name = "Brute Chief (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 300
	maxHealth = 300
	combat_tier = 3
	resistance = 10
	icon_state = "chief"
	icon_living = "chief"
	icon_dead = "chief_dead"
	possible_weapons = list(/obj/item/weapon/gun/projectile/turret/plas/detached,/obj/item/weapon/gun/launcher/grenade/brute_shot,/obj/item/weapon/gun/projectile/fuel_rod_launcher)
	turns_per_move = 5
	var/shield_left = 100
	var/shield_max = 100
	var/recharge_delay = 5 SECONDS
	var/recharge_rate = 10
	var/last_damage = 0
	var/recharging = 0

/mob/living/simple_animal/hostile/covenant/brute/chief/adjustBruteLoss(damage)
	last_damage = world.time
	if(recharging)
		overlays -= "shield_recharge"
		recharging = 0

	//take damage from shield first
	if(shield_left > 0)
		overlays |= "shield_flicker"
		var/shield_absorbed = min(shield_left, damage)
		shield_left -= shield_absorbed
		damage -= shield_absorbed

	. = ..(damage)

/mob/living/simple_animal/hostile/covenant/brute/chief/Life()
	. = ..()

	//dont need to display damage any more
	overlays -= "shield_flicker"

	if(stat == DEAD)
		overlays -= "shield_recharge"
	else
		//are we currently recharging?
		if(recharging)
			shield_left += recharge_rate

			//have we just finished recharging?
			if(shield_left >= shield_max)
				shield_left = shield_max
				overlays -= "shield_recharge"
				recharging = 0

		//should we start recharging?
		else if(world.time >= last_damage + recharge_delay && shield_left < shield_max)
			recharging = 1
			overlays |= "shield_recharge"

/mob/living/simple_animal/hostile/covenant/brute/chief/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()

/mob/living/simple_animal/hostile/covenant/brute/chief/melee
	name = "Brute Chief (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 300
	maxHealth = 300
	combat_tier = 6
	resistance = 10
	icon_state = "chiefmelee"
	icon_living = "chiefmelee"
	icon_dead = "chief_dead"
	possible_weapons = list()
	turns_per_move = 3
	melee_damage_lower = 55
	melee_damage_upper = 65

/mob/living/simple_animal/hostile/covenant/brute/chief/melee/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(70))
		new/obj/item/weapon/grav_hammer(src.loc)

/mob/living/simple_animal/hostile/covenant/brute/capt/melee
	name = "Brute Captain (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs64.dmi'
	health = 250
	maxHealth = 250
	combat_tier = 6
	resistance = 10
	icon_state = "captmelee"
	icon_living = "captmelee"
	icon_dead = "capt_dead"
	possible_weapons = list()
	turns_per_move = 5
	melee_damage_lower = 55
	melee_damage_upper = 65

/mob/living/simple_animal/hostile/covenant/brute/capt/melee/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(50))
		new/obj/item/weapon/grav_hammer(src.loc)