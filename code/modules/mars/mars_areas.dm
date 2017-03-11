/area/mars
	name = "Mars"
	icon_state = "mars"
	has_gravity = 1

//Default map area(instead of space):
/area/mars/outdoors
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
	noteleport = 1
	ambientsounds = list('sound/ambience/ambimars1.ogg')
	flags = NONE

//Shuttles
/area/shuttle/arrival_pod
	name = "Arrival Drop Pod"
	requires_power = 0
	luminosity = 0
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
	name = "Western Hallway"
	icon_state = "hallP"

/area/mars/colony/hallway/medsci
	name = "Eastern Hallway"
	icon_state = "hallS"

/area/mars/colony/hallway/eng
	name = "Southern Hallway"
	icon_state = "hallA"

/area/mars/colony/hallway/command
	name = "Northern Hallway"
	icon_state = "hallF"

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

/area/mars/colony/maint/medbay
	name = "Medbay Maintenance"
	icon_state = "maintmed"

/area/mars/colony/maint/hab
	name = "Habitation Zone Maintenance"
	icon_state = "mainthab"

/area/mars/colony/maint/cargo
	name = "Cargo Maintenance"
	icon_state = "maintcargo"

//Medbay
/area/mars/colony/medbay
	name = "Medbay"
	icon_state = "medbay"

/area/mars/colony/medbay/cmo
	name = "Chief Medical Officer's office"
	icon_state = "CMO"

/area/mars/colony/medbay/main
	name = "Medbay"
	icon_state = "medbay"

/area/mars/colony/medbay/chemistry
	name = "Chemistry"
	icon_state = "chem"

/area/mars/colony/medbay/virology
	name = "Virology"
	icon_state = "virology"

/area/mars/colony/medbay/morgue
	name = "Morgue"
	icon_state = "morgue"
	ambientsounds = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')

/area/mars/colony/medbay/exam_rooms
	name = "Exam Rooms"
	icon_state = "exam_room"

/area/mars/colony/medbay/er
	name = "Emergency Room"
	icon_state = "medbay2"

/area/mars/colony/medbay/storage
	name = "Medbay Storage"
	icon_state = "medbay3"

//Cargo
/area/mars/colony/cargo/office
	name = "Cargo Office"
	icon_state = "quartoffice"

/area/mars/colony/cargo/storage
	name = "Cargo Bay"
	icon_state = "quartstorage"

/area/mars/colony/cargo/qm
	name = "Quartermaster's Office"
	icon_state = "quart"

/area/mars/colony/cargo/botbay
	name = "Mulebot Garage"
	icon_state = "yellow"

/area/mars/colony/cargo/deliveryroom
	name = "Mailroom"
	icon_state = "green"

//Janitorial Closet(s)
/area/mars/colony/janitor
	name = "Custodial Closet"
	icon_state = "janitor"
	flags = NONE

//Hydroponics
/area/mars/colony/hydroponics
	name = "Hydroponics"
	icon_state = "hydro"

//Engineering
/area/mars/colony/tcomms/control
	name = "Telecommunications Control Room"
	icon_state = "tcomsatcomp"

/area/mars/colony/tcomms/server
	name = "Telecommunications Server Room"
	icon_state = "tcomsatcham"

/area/mars/colony/engine
	ambientsounds = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')

/area/mars/colony/engine/smes
/area/mars/colony/engine/smes/north
/area/mars/colony/engine/smes/south
/area/mars/colony/engine/smes/east
/area/mars/colony/engine/smes/west
	name = "South Power Stepdown"
	icon_state = "engine_smes"

/area/mars/colony/engine/engineering
	name = "Engineering"
	icon_state = "engine"

/area/mars/colony/engine/foyer
	name = "Engineering Foyer"
	icon_state = "engine"

/area/mars/colony/engine/chiefs_office
	name = "Chief Engineer's office"
	icon_state = "engine_control"

/area/mars/colony/engine/secure_construction
	name = "Secure Construction Area"
	icon_state = "engine"

//Mining(Colony-side)
/area/mars/colony/mining/dock
	name = "Mining Dock"
	icon_state = "mining"

/area/mars/colony/mining/storage
	name = "Mining Storage"
	icon_state = "green"

/area/mars/colony/mining/storage
	name = "Mining Storage"
	icon_state = "green"

//Mining Z level areas
/area/mars/mine
	name = "Vastitas Borealis" //Northern Waste in latin; real location on Mars.
	icon_state = "mine"

/area/mars/mine/outdoors
	icon_state = "explored"
	music = null
	always_unpowered = 1
	requires_power = 1
	poweralm = 0
	power_environ = 0
	power_equip = 0
	power_light = 0
	outdoors = 1
	ambientsounds = list('sound/ambience/ambimars1.ogg')

/area/mars/mine/outdoors/unexplored
	icon_state = "unexplored"
	music = null
	always_unpowered = 1
	requires_power = 1
	poweralm = 0
	power_environ = 0
	power_equip = 0
	power_light = 0
	outdoors = 1
	ambientsounds = list('sound/ambience/ambimars1.ogg')
	flags = NONE

/area/mars/mine/outpost/lobby
	name = "Mining Station"

/area/mars/mine/outpost/storage
	name = "Mining Station Storage"

/area/mars/mine/outpost/production
	name = "Mining Station Starboard Wing"
	icon_state = "mining_production"

/area/mars/mine/outpost/abandoned
	name = "Abandoned Mining Station"

/area/mars/mine/outpost/living_quarters
	name = "Mining Station Port Wing"
	icon_state = "mining_living"

/area/mars/mine/outpost/eva
	name = "Mining Station EVA"
	icon_state = "mining_eva"

/area/mars/mine/outpost/maintenance
	name = "Mining Station Communications"

/area/mars/mine/outpost/cafeteria
	name = "Mining station Cafeteria"

/area/mars/mine/outpost/hydroponics
	name = "Mining station Hydroponics"

/area/mars/mine/outpost/sleeper
	name = "Mining station Emergency Sleeper"

/area/mars/mine/outpost/north_outpost
	name = "North Mining Outpost"

/area/mars/mine/outpost/west_outpost
	name = "West Mining Outpost"

/area/mars/mine/outpost/laborcamp
	name = "Labor Camp"

/area/mars/mine/outpost/laborcamp/security
	name = "Labor Camp Security"
	icon_state = "security"
/*
//reference
/area/mine
	icon_state = "mining"
	has_gravity = 1

/area/mine/explored
	name = "Mine"
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

/area/mine/unexplored
	name = "Mine"
	icon_state = "unexplored"
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

/area/mine/lobby
	name = "Mining Station"

/area/mine/storage
	name = "Mining Station Storage"

/area/mine/production
	name = "Mining Station Starboard Wing"
	icon_state = "mining_production"

/area/mine/abandoned
	name = "Abandoned Mining Station"

/area/mine/living_quarters
	name = "Mining Station Port Wing"
	icon_state = "mining_living"

/area/mine/eva
	name = "Mining Station EVA"
	icon_state = "mining_eva"

/area/mine/maintenance
	name = "Mining Station Communications"

/area/mine/cafeteria
	name = "Mining station Cafeteria"

/area/mine/hydroponics
	name = "Mining station Hydroponics"

/area/mine/sleeper
	name = "Mining station Emergency Sleeper"

/area/mine/north_outpost
	name = "North Mining Outpost"

/area/mine/west_outpost
	name = "West Mining Outpost"

/area/mine/laborcamp
	name = "Labor Camp"

/area/mine/laborcamp/security
	name = "Labor Camp Security"
	icon_state = "security"
*/
