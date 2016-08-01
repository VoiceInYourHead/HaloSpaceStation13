var/global/list/ore_data = list()

var/global/list/all_abundant_ores = list()
var/global/list/all_common_ores = list()
var/global/list/all_rare_ores = list()

var/global/list/unused_abundant_ores = list()
var/global/list/unused_common_ores = list()
var/global/list/unused_rare_ores = list()

/datum/controller/process/overmap/var/list/all_ores

/datum/controller/process/overmap/var/list/all_abundant_ores
/datum/controller/process/overmap/var/list/all_common_ores
/datum/controller/process/overmap/var/list/all_rare_ores

/datum/controller/process/overmap/var/list/unused_abundant_ores
/datum/controller/process/overmap/var/list/unused_common_ores
/datum/controller/process/overmap/var/list/unused_rare_ores

/hook/startup/proc/init_ore_data()
	if(!ore_data || !ore_data.len)
		for(var/oretype in typesof(/ore)-/ore)
			var/ore/OD = new oretype()
			ore_data[OD.name] = OD

			if(OD.vein_type)
				switch(OD.vein_size)
					if(3)
						all_abundant_ores[OD.name] = OD
					if(2)
						all_common_ores[OD.name] = OD
					if(1)
						all_rare_ores[OD.name] = OD

		unused_abundant_ores = all_abundant_ores.Copy()
		unused_common_ores = all_common_ores.Copy()
		unused_rare_ores = all_rare_ores.Copy()

	return 1

/ore
	var/name
	var/display_name
	var/alloy
	var/smelts_to
	var/compresses_to
	var/result_amount     // How much ore?
	var/spread = 1	      // Does this type of deposit spread?
	var/spread_chance = 35// Chance of spreading in any direction
	var/ore	              // Path to the ore produced when tile is mined.
	var/scan_icon = "mineral_common"         // Overlay for ore scanners.
	// Xenoarch stuff. No idea what it's for, just refactored it to be less awful.
	var/list/xarch_ages = list(
		"thousand" = 999,
		"million" = 999
		)
	var/xarch_source_mineral = "iron"

/ore/New()
	. = ..()
	if(!display_name)
		display_name = name

/ore/uranium
	name = "uranium"
	display_name = "pitchblende"
	smelts_to = "uranium"
	result_amount = 5
	spread_chance = 10
	ore = /obj/item/weapon/ore/uranium
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 704
		)
	xarch_source_mineral = "potassium"

/ore/hematite
	name = "iron"
	display_name = "hematite"
	smelts_to = "iron"
	alloy = 1
	result_amount = 5
	spread_chance = 25
	ore = /obj/item/weapon/ore/iron
	scan_icon = "mineral_common"

/ore/coal
	name = "coal"
	display_name = "raw carbon"
	smelts_to = "plastic"
	alloy = 1
	result_amount = 5
	spread_chance = 25
	ore = /obj/item/weapon/ore/coal
	scan_icon = "mineral_common"

/ore/glass
	name = "sand"
	display_name = "impure silicates"
	smelts_to = "glass"
	compresses_to = "sandstone"

/ore/phoron
	name = "phoron"
	display_name = "phoron crystals"
	compresses_to = "phoron"
	//smelts_to = something that explodes violently on the conveyor, huhuhuhu
	result_amount = 5
	spread_chance = 25
	ore = /obj/item/weapon/ore/phoron
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 999,
		"billion" = 13,
		"billion_lower" = 10
		)
	xarch_source_mineral = "phoron"

/ore/silver
	name = "silver"
	display_name = "native silver"
	smelts_to = "silver"
	result_amount = 5
	spread_chance = 10
	ore = /obj/item/weapon/ore/silver
	scan_icon = "mineral_uncommon"

/ore/gold
	smelts_to = "gold"
	name = "gold"
	display_name = "native gold"
	result_amount = 5
	spread_chance = 10
	ore = /obj/item/weapon/ore/gold
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 999,
		"billion" = 4,
		"billion_lower" = 3
		)

/ore/diamond
	name = "diamond"
	display_name = "diamond"
	compresses_to = "diamond"
	result_amount = 5
	spread_chance = 10
	ore = /obj/item/weapon/ore/diamond
	scan_icon = "mineral_rare"
	xarch_source_mineral = "nitrogen"

/ore/platinum
	name = "platinum"
	display_name = "raw platinum"
	smelts_to = "platinum"
	compresses_to = "osmium"
	alloy = 1
	result_amount = 5
	spread_chance = 10
	ore = /obj/item/weapon/ore/osmium
	scan_icon = "mineral_rare"

/ore/hydrogen
	name = "mhydrogen"
	display_name = "metallic hydrogen"
	smelts_to = "tritium"
	compresses_to = "mhydrogen"
	scan_icon = "mineral_rare"
