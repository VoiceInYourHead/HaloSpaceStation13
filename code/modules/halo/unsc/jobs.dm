/decl/hierarchy/outfit/job/unsc_job
	name = "UNSC"
	hierarchy_type = /decl/hierarchy/outfit/job/unsc_job
	pda_slot = null
	flags = 0

/decl/hierarchy/outfit/job/unsc_job/marine
	name = "UNSC Marine"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	mask = /obj/item/clothing/mask/marine
	uniform = /obj/item/clothing/under/unsc/marine_fatigues
	shoes = /obj/item/clothing/shoes/marine/crewman
	head = /obj/item/clothing/head/helmet/marine
	suit = /obj/item/clothing/suit/storage/marine
	belt = /obj/item/weapon/storage/belt/marine_ammo
	gloves = /obj/item/clothing/gloves/thick/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/marine/enlisted/e2, /obj/item/clothing/accessory/badge/tags)

/decl/hierarchy/outfit/job/unsc_job/marine/medic
	name = "UNSC Marine Medic"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	mask = /obj/item/clothing/mask/marine
	uniform = /obj/item/clothing/under/unsc/marine_fatigues
	shoes = /obj/item/clothing/shoes/marine/crewman
	head = /obj/item/clothing/head/helmet/marine/medic
	suit = /obj/item/clothing/suit/storage/marine/medic
	belt = /obj/item/weapon/storage/belt/marine_medic/mobilespawn_medic
	gloves = /obj/item/clothing/gloves/thick/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/marine/enlisted/e2, /obj/item/clothing/accessory/badge/tags)

/decl/hierarchy/outfit/job/unsc_job/marine/engie
	name = "UNSC Marine Engineer"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	mask = /obj/item/clothing/mask/marine
	uniform = /obj/item/clothing/under/unsc/marine_fatigues
	shoes = /obj/item/clothing/shoes/marine/crewman
	head = /obj/item/clothing/head/helmet/marine/brown
	suit = /obj/item/clothing/suit/storage/marine/brown
	belt = /obj/item/weapon/storage/belt/utility/full
	back = /obj/item/weapon/storage/backpack/marine/mobilespawn_engineer
	gloves = /obj/item/clothing/gloves/thick/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/marine/enlisted/e2, /obj/item/clothing/accessory/badge/tags)

/decl/hierarchy/outfit/job/unsc_job/squadlead
	name = "UNSC Squad Leader"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	mask = /obj/item/clothing/mask/marine
	uniform = /obj/item/clothing/under/unsc/marine_fatigues
	shoes = /obj/item/clothing/shoes/marine/crewman
	head = /obj/item/clothing/head/helmet/marine/sl
	back = /obj/item/weapon/gun/projectile/ma5b_ar/MA37
	suit = /obj/item/clothing/suit/storage/marine/sl
	belt = /obj/item/weapon/storage/belt/marine_ammo
	gloves = /obj/item/clothing/gloves/thick/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/marine/enlisted/e6, /obj/item/clothing/accessory/badge/tags)

/decl/hierarchy/outfit/job/unsc_job/marine/co
	name = "UNSC Commanding Officer"
	glasses = /obj/item/clothing/glasses/hud/tactical
	uniform = /obj/item/clothing/under/unsc/co
	head = /obj/item/clothing/head/unsc/co
	mask = /obj/item/clothing/mask/gas/half
	suit = /obj/item/clothing/suit/storage/service/marine/command
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/weapon/gun/projectile/m6d_magnum/CO_magnum
	back = /obj/item/weapon/material/machete/officersword
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/officer/o6,/obj/item/clothing/accessory/badge/tags)

/decl/hierarchy/outfit/job/unsc_job/oni_researcher
	name = "ONI Researcher"

	l_ear = /obj/item/device/radio/headset/unsc/oni

	uniform = /obj/item/clothing/under/color/black

	suit = /obj/item/clothing/suit/storage/toggle/labcoat

	l_pocket = /obj/item/clothing/accessory/badge/onib
	hierarchy_type = /decl/hierarchy/outfit/job

//JOBS//

/datum/job/unsc_job
	access = list(access_unsc,access_unsc_armoury)
	selection_color = "0A0A95"
	whitelisted_species = list(/datum/species/human)
	spawn_faction = "UNSC"
	loadout_allowed = TRUE
	lace_access = TRUE

/datum/job/unsc_job/unsc_marine
	title = "UNSC Marine"
	total_positions = 10
	spawn_positions = 10
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/marine
	alt_titles = list("Marine Combat Medic" = /decl/hierarchy/outfit/job/unsc_job/marine/medic,
	"Marine Combat Engineer" = /decl/hierarchy/outfit/job/unsc_job/marine/engie)

/datum/job/unsc_job/unsc_marine_specialist
	title = "UNSC Marine Specialist"
	total_positions = 4
	spawn_positions = 4
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/marine
	alt_titles = list("Light Machine Gunner Marine","Scout Sniper Marine","Anti-Tank Marine")
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist)

/datum/job/unsc_job/unsc_squad_lead
	title = "UNSC Squad Leader"
	total_positions = 2
	spawn_positions = 2
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/squadlead
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist)

/datum/job/unsc_job/unsc_co
	title = "UNSC Commanding Officer"
	total_positions = 1
	spawn_positions = 1
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/marine/co
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist,access_unsc_odst,access_unsc_oni)

/datum/job/unsc_job/odst
	title = "UNSC ODST Rifleman"
	total_positions = 6
	spawn_positions = 6
	is_whitelisted = 1
	alt_titles = list("UNSC ODST Engineer","UNSC ODST Medic","UNSC ODST Sharpshooter","UNSC ODST Close Quarters Fighter")
	access = list(access_unsc,access_unsc_armoury,access_unsc_odst,access_unsc_specialist)
	outfit_type = /decl/hierarchy/outfit/job/facil_ODST

/datum/job/unsc_job/ship_crew
	title = "UNSC Bridge Crew"
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/bridgecrew
	total_positions = 3
	spawn_positions = 3
	is_whitelisted = 1
	alt_titles = list("UNSC Ship Tehnician"= /decl/hierarchy/outfit/job/unsc_job/technician,
	"UNSC Doctor"= /decl/hierarchy/outfit/job/unsc_job/medicalcrew,)
	access = list(access_unsc)

/decl/hierarchy/outfit/job/facil_ODST
	name = "Rifleman"
	l_ear = /obj/item/device/radio/headset/unsc/odst
	glasses = null
	uniform = /obj/item/clothing/under/unsc/odst_jumpsuit
	gloves = /obj/item/clothing/gloves/tactical
	shoes = /obj/item/clothing/shoes/jungleboots
	gloves = /obj/item/clothing/gloves/thick/combat
	belt = /obj/item/weapon/gun/projectile/m6c_magnum_s
	id_type = /obj/item/weapon/card/id/odst
	starting_accessories = list (/obj/item/clothing/accessory/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/holster/thigh, /obj/item/clothing/accessory/badge/tags)

	flags = 0

	hierarchy_type = /decl/hierarchy/outfit/job

/datum/job/unsc_job/odst/squadlead
	title = "UNSC ODST Squad Leader"
	total_positions = 1
	spawn_positions = 1
	is_whitelisted = 1
	alt_titles = list()
	access = list(access_unsc,access_unsc_armoury,access_unsc_odst,access_unsc_specialist)
	outfit_type = /decl/hierarchy/outfit/job/facil_ODST/squadleader

/decl/hierarchy/outfit/job/facil_ODST/squadleader
	name = "UNSC ODST Squad Leader"

	l_ear = /obj/item/device/radio/headset/unsc/odst
	glasses = null
	uniform = /obj/item/clothing/under/unsc/odst_jumpsuit
	gloves = /obj/item/clothing/gloves/tactical
	shoes = /obj/item/clothing/shoes/jungleboots
	gloves = /obj/item/clothing/gloves/thick/combat
	belt = /obj/item/weapon/gun/projectile/m6c_magnum_s
	id_type = /obj/item/weapon/card/id/odst
	starting_accessories = list (/obj/item/clothing/accessory/rank/fleet/enlisted/e6, /obj/item/clothing/accessory/holster/thigh, /obj/item/clothing/accessory/badge/tags)

	flags = 0

	hierarchy_type = /decl/hierarchy/outfit/job

/datum/job/unsc_job/oni_researcher
	title = "ONI Researcher"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/oni_researcher
	alt_titles = list("Doctor","Physicist","Botanist","Chemist","Weapons Researcher","Surgeon","Geneticist")
	access = list(access_unsc,access_unsc_armoury,access_unsc_oni)

/decl/hierarchy/outfit/job/unsc_job/crewman
	name = "UNSC Ship Crew"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	uniform = /obj/item/clothing/under/unsc/red
	shoes = /obj/item/clothing/shoes/jackboots
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e3)

	flags = 0

/datum/job/unsc_job/mech_pilot
	title = "UNSC Mech Pilot"
	total_positions = 1
	spawn_positions = 1
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/mech_pilot
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist)

/decl/hierarchy/outfit/job/unsc_job/mech_pilot
	l_ear = /obj/item/device/radio/headset/unsc/marine
	uniform = /obj/item/clothing/under/unsc/brown
	suit = /obj/item/clothing/suit/storage/marine/pilot
	gloves = /obj/item/clothing/gloves/tactical
	shoes = /obj/item/clothing/shoes/marine/crewman
	gloves = /obj/item/clothing/gloves/thick/combat
	belt = /obj/item/weapon/gun/projectile/m7_smg
	id_type = /obj/item/weapon/card/id/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/holster/thigh, /obj/item/clothing/accessory/badge/tags)

	flags = 0

/decl/hierarchy/outfit/job/unsc_job/technician
	name = "UNSC Ship Technician"
	uniform = /obj/item/clothing/under/unsc/technician
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/storage/unsc/technician
	head = /obj/item/clothing/head/hardhat/unsc
	glasses = /obj/item/clothing/glasses/welding/unsc
	gloves = /obj/item/clothing/gloves/insulated/unsc
	belt = /obj/item/weapon/storage/belt/utility/full
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e5)

	flags = 0

/decl/hierarchy/outfit/job/unsc_job/bridgecrew
	name = "UNSC Ship Bridge Crew"

	l_ear = /obj/item/device/radio/headset/unsc
	uniform = /obj/item/clothing/under/unsc/bridge
	shoes =  /obj/item/clothing/shoes/jackboots
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e6)

	flags = 0

/decl/hierarchy/outfit/job/unsc_job/medicalcrew
	name = "UNSC Medical Crew"

	l_ear = /obj/item/device/radio/headset/unsc
	uniform = /obj/item/clothing/under/unsc/shipmedic
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	glasses = /obj/item/clothing/glasses/hud/health
	shoes =  /obj/item/clothing/shoes/jackboots
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e6)

	flags = 0

/datum/job/unsc_ship_ai
	title = "UNSC AI"
	selection_color = "#0A0A95"
	total_positions = 1
	spawn_positions = 1
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/halo_ai_smart
	whitelisted_species = list()
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist,access_unsc_odst,access_unsc_oni,access_unsc_officers)

/datum/job/unsc_job/airship_pilot
	title = "UNSC Airship Pilot"
	total_positions = 4
	spawn_positions = 4
	is_whitelisted = 1
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/airship_pilot
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist)

/datum/job/mp_officer
	title = "UNSC Military Police Officer"
	total_positions = 2
	spawn_positions = 2
	is_whitelisted = 1
	selection_color = "#0A0A95"
	spawn_faction = "UNSC"
	whitelisted_species = list(/datum/species/human)
	outfit_type = /decl/hierarchy/outfit/job/unsc_job/mp_officer
	access = list(access_unsc,access_unsc_armoury,access_unsc_specialist,access_unsc_oni,access_unsc_navsec)

/decl/hierarchy/outfit/job/unsc_job/airship_pilot
	name = "UNSC Air Pilot"

	l_ear = /obj/item/device/radio/headset/unsc/pilot
	uniform = /obj/item/clothing/under/unsc/newpilot
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/helmet/newpilot
	id_type = /obj/item/weapon/card/id/unsc
	suit = /obj/item/clothing/suit/storage/marine/pilot
	starting_accessories = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e5)

	flags = 0

/decl/hierarchy/outfit/job/unsc_job/mp_officer
	name = "UNSC MPO"

	l_ear = /obj/item/device/radio/headset/unsc/marine
	uniform = /obj/item/clothing/under/unsc/mp_fatigues
	shoes = /obj/item/clothing/shoes/marine/crewman
	head = /obj/item/clothing/head/helmet/mp
	suit = /obj/item/clothing/suit/storage/mp
	gloves = /obj/item/clothing/gloves/thick/unsc
	starting_accessories = list (/obj/item/clothing/accessory/rank/marine/enlisted/e6, /obj/item/clothing/accessory/badge/tags)

	flags = 0