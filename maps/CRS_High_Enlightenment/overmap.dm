
/obj/effect/overmap/ship/covenant_heretic_ship
	name = "CRS High Enlightenmen"
	desc = "The silhouette of this ship matches no known ship signatures"

	icon = 'heretic.dmi'
	icon_state = "ship"
	fore_dir = WEST
	vessel_mass = 2

	faction = "UNSC"
	flagship = 1

	//THIS MUST BE SET TO START AND END OUTSIDE THE SHIP OR ELSE THE MISSLES SPONTANEOUSLY APPEAR INSIDE THE HULL
	map_bounds = list(2,90,80,44) //Format: (TOP_LEFT_X,TOP_LEFT_Y,BOTTOM_RIGHT_X,BOTTOM_RIGHT_Y)

	parent_area_type = /area/covenant_heretic_ship

	ship_max_speed = SHIP_DEFAULT_PIXEL_SPEED - 1

