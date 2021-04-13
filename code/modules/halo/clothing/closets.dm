/obj/structure/closet/secure_closet/bertels_mp
	name = "naval security locker"
	desc = "It's a storage unit for naval security gear."
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"
	req_access = list(308)

/obj/structure/closet/secure_closet/bertels_mp/New()
	. = ..()
	new /obj/item/clothing/under/unsc/tactical(src)
	new /obj/item/device/radio/headset/unsc(src)
	new /obj/item/clothing/suit/storage/marine/military_police(src)
	new /obj/item/clothing/shoes/jackboots(src)
	new /obj/item/device/radio/headset/unsc(src)
	new /obj/item/weapon/melee/baton/humbler(src)
	new /obj/item/weapon/gun/projectile/m7_smg/rubber(src)
	new /obj/item/ammo_magazine/m5/rubber(src)
	new /obj/item/ammo_magazine/m5/rubber(src)
	new /obj/item/ammo_magazine/m5/rubber(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/weapon/grenade/flashbang(src)
	new /obj/item/weapon/grenade/flashbang(src)
	new /obj/item/weapon/grenade/flashbang(src)

/obj/structure/closet/secure_closet/cuffs_storage
	name = "Security locker"
	desc = "It's a storage unit for naval security gear."
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"
	req_access = list(308)

/obj/structure/closet/secure_closet/cuffs_storage/New()
	. = ..()
	new /obj/item/clothing/glasses/sunglasses/blindfold(src)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src)
	new /obj/item/clothing/mask/muzzle(src)
	new /obj/item/clothing/mask/muzzle(src)
	new /obj/item/clothing/mask/muzzle(src)
	new /obj/item/weapon/handcuffs(src)
	new /obj/item/weapon/handcuffs(src)
	new /obj/item/weapon/handcuffs(src)
	new /obj/item/weapon/handcuffs(src)
	new /obj/item/weapon/handcuffs(src)
	new /obj/item/clothing/suit/straight_jacket(src)
	new /obj/item/clothing/suit/straight_jacket(src)
	new /obj/item/weapon/melee/baton/humbler(src)
	new /obj/item/weapon/melee/baton/humbler(src)
	new /obj/item/weapon/melee/baton/humbler(src)