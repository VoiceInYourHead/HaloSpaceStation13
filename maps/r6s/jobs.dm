
/datum/job/Attackers
	title = "Attack side"
	total_positions = 5
	spawn_positions = 5
	selection_color = "#000000"

	loadout_allowed = FALSE
	outfit_type = /decl/hierarchy/outfit/job/r6s/rookie
	whitelisted_species = list(/datum/species/human)

	latejoin_at_spawnpoints = TRUE
	alt_titles = list()

/datum/job/Defenders
	title = "Defense side"
	total_positions = 5
	spawn_positions = 5
	selection_color = "#000000"

	loadout_allowed = FALSE
	outfit_type = /decl/hierarchy/outfit/job/r6s/rookie
	whitelisted_species = list(/datum/species/human)

	latejoin_at_spawnpoints = TRUE
	alt_titles = list()

/decl/hierarchy/outfit/job/r6s/rookie
	name = "Rookie"

	head = /obj/item/clothing/head/helmet/marine/karmac
	glasses = /obj/item/clothing/glasses/sunglasses/big
	mask = /obj/item/clothing/mask/marine
	suit = /obj/item/clothing/suit/storage/marine/karmac
	uniform = /obj/item/clothing/under/unsc/odst_jumpsuit
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tactical
	back = /obj/item/weapon/gun/projectile/ma5b_ar
	belt = /obj/item/weapon/storage/belt/marine_ammo/mobilespawn_ma5
	l_pocket = /obj/item/weapon/armor_patch
	r_pocket = /obj/item/weapon/grenade/frag/m9_hedp

	l_hand = /obj/item/weapon/gun/projectile/m6d_magnum

	flags = 0