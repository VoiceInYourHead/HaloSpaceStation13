/area/planets/helllanding
	name = "Karrabak Base lower level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 0
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/area/planets/helllanding/lvl2
	name = "Karrabak Base upper level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 0
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/obj/effect/overmap/sector/helllanding
	name = "Kar'r'abak"
	icon = 'maps/Exoplanet Research/Exoplanet Research Ice/ks7_sector_icon.dmi'
	icon_state = "ice"
	desc = "An Icy backwater planet. The heart of the Covenant in this sector."
	block_slipspace = 1
	known = 0
	base = 1
	faction = "Covenant"

	map_bounds = list(1,200,100,1) //Format: (TOP_LEFT_X,TOP_LEFT_Y,BOTTOM_RIGHT_X,BOTTOM_RIGHT_Y)

	parent_area_type = /area/planets/helllanding