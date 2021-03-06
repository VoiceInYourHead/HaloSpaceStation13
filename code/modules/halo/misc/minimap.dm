/obj/structure/sign/map
	desc = "A detailed area map for planning operations."
	name = "area map"
	icon_state = "areamap"
	var/image/img
	var/list/overlay_list = list()
/obj/structure/sign/map/New()
	..()
	img = image(icon = 'icons/map.dmi', icon_state = "map")

/obj/structure/sign/map/future1
	desc = "A detailed area map for planning operations."
	name = "area map"
	icon_state = "tncC"
	layer = ABOVE_HUMAN_LAYER
	plane = ABOVE_HUMAN_PLANE

/obj/structure/sign/map/future2
	desc = "A detailed area map for planning operations."
	name = "area map"
	icon_state = "tncD"
	layer = ABOVE_HUMAN_LAYER
	plane = ABOVE_HUMAN_PLANE

/obj/structure/sign/map/future3
	desc = "A detailed area map for planning operations."
	name = "area map"
	density = 1
	icon_state = "tncA"

/obj/structure/sign/map/future4
	desc = "A detailed area map for planning operations."
	name = "area map"
	density = 1
	icon_state = "tncB"

/obj/structure/sign/map/examine(mob/user)
	user << browse(getFlatIcon(img),"window=popup;size=800x800")

/obj/structure/sign/map/attackby(obj/item/I as obj, mob/user as mob)
	if (istype(I, /obj/item/weapon/pen))
		var/nr = ""
		var/ico_dir = 2
		var/c_color = input(user,"Which color do you want to use?","Color","Cancel",list("Cancel","White","Red","Green","Yellow","Blue"))
		switch(c_color)
			if ("Cancel")
				return
			if ("White")
				c_color = COLOR_WHITE
			if ("Red")
				c_color = COLOR_RED
			if ("Green")
				c_color = COLOR_GREEN
			if ("Yellow")
				c_color = COLOR_YELLOW
			if ("Blue")
				c_color = COLOR_BLUE
		var/c_icon = input(user,"Which icon do you want to use?","Icon","Cancel",list("Cancel","Circle","X","Arrow","Number"))
		switch(c_icon)
			if ("Cancel")
				return
			if ("Circle")
				c_icon = "map_circle"
			if ("X")
				c_icon = "map_x"
			if ("Arrow")
				c_icon = "map_arrow"
				ico_dir = input(user,"Choose a direction:","Number","Cancel",list("Cancel","North","South","East","West","Northeast","Northwest","Southeast","Southwest"))
				if (ico_dir == "Cancel")
					return
				else
					ico_dir = text2dir(ico_dir)
			if ("Number")
				nr = input(user,"Choose a number:","Number","Cancel",list("Cancel","1","2","3","4","5","6","7","8","9"))
				if (nr == "Cancel")
					return
				else
					c_icon = "map_number_[nr]"
		var/x_dist = 0
		var/y_dist = 0
		var/c_location = input(user,"Where do you want to place it (column)?","Location","Cancel",list("Cancel","A","B","C","D","E","F","G","H","I","J"))
		var/c_location2 = input(user,"Where do you want to place it (line)?","Location","Cancel",list("Cancel","1","2","3","4","5","6","7","8","9","10"))
		y_dist = 600-(text2num(c_location2)*60)
		switch(c_location)
			if ("A")
				x_dist = 0
			if ("B")
				x_dist = 60*1
			if ("C")
				x_dist = 60*2
			if ("D")
				x_dist = 60*3
			if ("E")
				x_dist = 60*4
			if ("F")
				x_dist = 60*5
			if ("G")
				x_dist = 60*6
			if ("H")
				x_dist = 60*7
			if ("I")
				x_dist = 60*8
			if ("J")
				x_dist = 60*9
		var/image/symbol_ico = image(icon='icons/minimap_effects.dmi', icon_state = c_icon, dir=ico_dir, layer=src.layer+1)
		symbol_ico.pixel_x = x_dist
		symbol_ico.pixel_y = y_dist
		symbol_ico.color = c_color
		overlay_list+=symbol_ico
		img.overlays += symbol_ico
		return
	else
		..()

/obj/structure/sign/map/verb/clear()
	set name = "Clear"
	set category = null
	set src in oview(1)

	if (!ishuman(usr))
		return
	usr << "You clear the map."
	overlay_list = list()
	img.overlays.Cut()

/obj/structure/sign/map/update_icon()
	..()
	img.overlays.Cut()
	for (var/image/I in overlay_list)
		img.overlays += I

/obj/structure/sign/map/attack_hand(mob/user)
	examine(user)
//////////////////////////////////////////
/obj/item/weapon/map
	desc = "A portable map of the area."
	name = "folding map"
	icon = 'icons/obj/decals.dmi'
	icon_state = "portable_areamap"
	var/image/img
	throwforce = 5
	force = 10
	w_class = 1.0

/obj/item/weapon/map/New()
	img = image(icon = 'icons/map.dmi', icon_state = "map")

/obj/item/weapon/map/examine(mob/user)
	user << browse("<img src=map.dmi></img>","window=popup;size=800x800")

/obj/item/weapon/map/attack_self(mob/user)
	examine(user)

/obj/item/weapon/map/future
	desc = "A portable map of the area."
	name = "folding map"
	icon = 'icons/obj/decals.dmi'
	icon_state = "finder1"

/obj/item/weapon/map/future/New()
	img = image(icon = 'icons/map.dmi', icon_state = "map")

/obj/item/weapon/map/future/examine(mob/user)
	user << browse("<img src=icons/map.dmi></img>","window=popup;size=800x800")

/obj/item/weapon/map/future/attack_self(mob/user)
	examine(user)