/datum/map/karrabak
	name = "Kar'r'abak"
	full_name = "Kar'r'abak telecommunication base"
	path = "karrabak"
	station_levels = list()
	admin_levels = list()
	accessible_z_levels = list()
	//lobby_icon = 'maps/example/example_lobby.dmi'
	lobby_icon = 'code/modules/halo/splashworks/title6.jpg'
	id_hud_icons = 'maps/geminus_city/geminus_hud_icons.dmi'
	station_networks = list("Exodus")
	station_name  = ""
	station_short = ""
	dock_name     = "Shuttle Dock"
	boss_name     = "United Nations Space Command"
	boss_short    = "UNSC HIGHCOM"
	company_name  = "United Nations Space Command"
	company_short = "UNSC"
	system_name = "Sector 0442: New Antartica"
	overmap_size= 80

	use_overmap = 1

	allowed_jobs = list(\
		/datum/job/unsc_job/unsc_marine,
		/datum/job/unsc_job/unsc_marine_specialist,
		/datum/job/unsc_job/unsc_squad_lead,
		/datum/job/unsc_job/unsc_co,
		/datum/job/unsc_job/odst,
		/datum/job/unsc_job/ship_crew,
		/datum/job/unsc_job/odst/squadlead,
		/datum/job/unsc_ship_ai,\
		/datum/job/mp_officer,\
		/datum/job/unsc_job/airship_pilot,\
		/datum/job/unsc_job/mech_pilot,\
		/datum/job/ONI_Spartan_II,\
		/datum/job/covenant/unggoy_heretic,\
		/datum/job/covenant/sangheili_heretic\
	)

	allowed_spawns = list(\
		DEFAULT_SPAWNPOINT_ID\
		)

	default_spawn = DEFAULT_SPAWNPOINT_ID