/turf/unsimulated/wall/r6s
	name = "God Wall"
	desc = "An armor-plated wall which acts as both protection and seperation"
	icon = 'icons/turf/wall_masks.dmi'
	icon_state = "solid"

/area/planets/house1/outdoor
	name = "Outside lower level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/area/planets/house1/indoor
	name = "House lower level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/area/planets/house2/outdoor
	name = "Outside upper level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/area/planets/house2/indoor
	name = "House upper level"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet

/area/planets/attackershouse
	name = "Base"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	has_gravity = 1
	base_turf = /turf/simulated/floor/asteroid/planet


/obj/effect/overmap/sector/r6s/hospital
	name = "Captured Hospital"
	icon = 'maps/geminus_city/sector_icon.dmi'
	desc = "A temperate, lightly forested world with deposits of valuable ore and a large human colony."
	icon_state = "geminus"

	map_bounds = list(1,65,40,1)

	overmap_spawn_near_me = list(/obj/effect/overmap/sector/r6s/base)

/obj/effect/overmap/sector/r6s/base
	name = "Attackers Base"
	icon = 'maps/geminus_city/sector_icon.dmi'
	desc = "A temperate, lightly forested world with deposits of valuable ore and a large human colony."
	icon_state = "geminus"

	map_bounds = list(1,40,40,1)