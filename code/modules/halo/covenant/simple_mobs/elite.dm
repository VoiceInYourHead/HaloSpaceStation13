/mob/living/simple_animal/hostile/covenant/elite
	name = "Elite Minor (NPC)"
	icon = 'code/modules/halo/covenant/simple_mobs/simple_mobs48.dmi'
	health = 150
	maxHealth = 150
	combat_tier = 3
	resistance = 10
	icon_state = "minor"
	icon_living = "minor"
	icon_dead = "dead_minor"
	possible_weapons = list(/obj/item/weapon/gun/energy/plasmarifle)
	turns_per_move = 5
	var/shield_left = 50
	var/shield_max = 50
	var/recharge_delay = 5 SECONDS
	var/recharge_rate = 10
	var/last_damage = 0
	var/recharging = 0

/mob/living/simple_animal/hostile/covenant/elite/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(40))
		new/obj/item/ammo_magazine/kv32(src.loc)
	else if(prob(70))
		new/obj/item/ammo_magazine/m762_ap/MA5B(src.loc)
	else if(prob(56))
		new/obj/item/ammo_magazine/needles(src.loc)

/mob/living/simple_animal/hostile/covenant/elite/major
	name = "Elite Major (NPC)"
	icon_state = "major"
	icon_living = "major"
	icon_dead = "dead_major"
	shield_left = 100
	shield_max = 100
	recharge_rate = 20
	turns_per_move = 4
	combat_tier = 4
	possible_weapons = list(/obj/item/weapon/gun/energy/plasmarepeater)

/mob/living/simple_animal/hostile/covenant/elite/major/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(62))
		new/obj/item/ammo_magazine/fuel_rod(src.loc)
	else if(prob(45))
		new/obj/item/ammo_magazine/spnkr(src.loc)
	else if(prob(70))
		new/obj/item/ammo_magazine/rifleneedlepack(src.loc)

/mob/living/simple_animal/hostile/covenant/elite/ultra
	name = "Elite Ultra (NPC)"
	icon_state = "ultra"
	icon_living = "ultra"
	icon_dead = "ultra_dead"
	shield_left = 150
	shield_max = 150
	recharge_rate = 25
	turns_per_move = 5
	combat_tier = 3
	possible_weapons = list(/obj/item/weapon/gun/projectile/type31needlerifle,/obj/item/weapon/gun/projectile/type51carbine)

/mob/living/simple_animal/hostile/covenant/elite/ultra/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(50))
		new/obj/item/ammo_magazine/needles(src.loc)
	else if(prob(80))
		new/obj/item/ammo_magazine/m127_saphe(src.loc)
	else if(prob(60))
		new/obj/item/ammo_magazine/m762_ap/M392(src.loc)

/mob/living/simple_animal/hostile/covenant/elite/zealot
	name = "Elite Zealot (NPC)"
	icon_state = "zealot"
	icon_living = "zealot"
	icon_dead = "zealot_dead"
	shield_left = 150
	shield_max = 150
	recharge_rate = 25
	combat_tier = 6
	turns_per_move = 3
	melee_damage_lower = 45
	melee_damage_upper = 55
	possible_weapons = list()

/mob/living/simple_animal/hostile/covenant/elite/zealot/New()
	. = ..()
	playsound(get_turf(src), 'code/modules/halo/sounds/Energysworddeploy.ogg', 100, 0, 0)

/mob/living/simple_animal/hostile/covenant/elite/zealot/do_attack_animation(var/target)
	. = ..()
	playsound(get_turf(src), 'code/modules/halo/sounds/Energyswordhit.ogg', 100, 0, 0)

/mob/living/simple_animal/hostile/covenant/elite/ultra/death(gibbed, deathmessage = "dies!", show_dead_message = 1)
	. = ..()
	if(held_light)
		held_light.on = 0
		held_light.update_icon()
	if(prob(70))
		new/obj/item/weapon/melee/energy/elite_sword(src.loc)