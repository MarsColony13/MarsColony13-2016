/area/mars
	name = "Mars"
	icon_state = "mars"
	has_gravity = 1

/area/mars/surface
	name = "Mars"
	icon_state = "explored"
	music = null
	always_unpowered = 1
	requires_power = 1
	poweralm = 0
	power_environ = 0
	power_equip = 0
	power_light = 0
	outdoors = 1
	ambientsounds = list('sound/ambience/ambimine.ogg')
	flags = NONE

/area/mars/colony
	name = "Mars Colony"
	icon_state = "colony"

/area/mars/colony/arrival_pod
	name = "Arrival Drop Pod"
	requires_power = 0
	luminosity = 1
	lighting_use_dynamic = DYNAMIC_LIGHTING_ENABLED
	has_gravity = 1
	valid_territory = 0
	icon_state = "shuttle"
