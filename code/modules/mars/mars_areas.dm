/area/mars
	name = "Mars"
	icon_state = "mars"
	has_gravity = 1

//Default map area(instead of space):
/area/mars/surface
	name = "Mars"
	icon_state = "mars"
	music = null
	valid_territory = 0
	always_unpowered = 1
	requires_power = 1
	poweralm = 0
	power_environ = 0
	power_equip = 0
	power_light = 0
	outdoors = 1
	ambientsounds = list('sound/ambience/ambimine.ogg')
	flags = NONE

//Shuttles
/area/shuttle/arrival_pod
	name = "Arrival Drop Pod"
	requires_power = 0
	luminosity = 1
	lighting_use_dynamic = DYNAMIC_LIGHTING_ENABLED
	has_gravity = 1
	valid_territory = 0
	icon_state = "shuttle"

/area/mars/colony
	name = "Mars Colony"
	icon_state = "colony"

//Hallways
/area/mars/colony/hallway/central
	name = "Central Hallway"
	icon_state = "hallC"

/area/mars/colony/hallway/hab
	name = "Habitation Wing Hallway"
	icon_state = "hallF"

/area/mars/colony/hallway/medsci
	name = "Medsci Wing Hallway"
	icon_state = "hallS"

/area/mars/colony/hallway/eng
	name = "Engineering Wing Hallway"
	icon_state = "hallA"

/area/mars/colony/hallway/command
	name = "Colony Administration Wing Hallway"
	icon_state = "hallP"

//Maintenance
/area/mars/colony/maint
	ambientsounds = list('sound/ambience/ambimaint1.ogg',
						 'sound/ambience/ambimaint2.ogg',
						 'sound/ambience/ambimaint3.ogg',
						 'sound/ambience/ambimaint4.ogg',
						 'sound/ambience/ambimaint5.ogg',
						 'sound/voice/lowHiss2.ogg', //Xeno Breathing Hisses, Hahahaha I'm not even sorry.
						 'sound/voice/lowHiss3.ogg',
						 'sound/voice/lowHiss4.ogg')
	valid_territory = 0