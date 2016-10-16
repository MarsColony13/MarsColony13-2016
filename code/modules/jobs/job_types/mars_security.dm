/datum/job/marshal
	title = "Marshal"
	flag = MARSHAL
	department_head = list("Director")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the colony director"
	selection_color = "#ffdddd"
	req_admin_notify = 1
	minimal_player_age = 14

	outfit = /datum/outfit/job/marshal

	access = list(access_security, access_sec_doors, access_brig, access_armory, access_court, access_weapons,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_maint_tunnels)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_armory, access_court, access_weapons,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_maint_tunnels)

/datum/outfit/job/marshal
	name = "Marshal"

	id = /obj/item/weapon/card/id/silver
	belt = /obj/item/device/pda/heads/hos
	ears = /obj/item/device/radio/headset/heads/hos/alt
	uniform = /obj/item/clothing/under/rank/security/marshal
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/hos/trenchcoat
	gloves = /obj/item/clothing/gloves/color/black/hos
	head = /obj/item/clothing/head/HoS/beret
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/revolver/peacemaker
	r_pocket = /obj/item/weapon/gun/energy/taser
	l_pocket = /obj/item/weapon/restraints/handcuffs
	backpack_contents = list(/obj/item/weapon/melee/baton/loaded=1)

	backpack = /obj/item/weapon/storage/backpack/security
	satchel = /obj/item/weapon/storage/backpack/satchel/sec
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag/sec
	box = /obj/item/weapon/storage/box/security

/datum/job/sheriff
	title = "Sheriff"
	flag = SHERIFF
	department_head = list("Marshal")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 5 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	spawn_positions = 5 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	supervisors = "the marshal"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/sheriff

	access = list(access_security, access_sec_doors, access_brig, access_court, access_maint_tunnels, access_morgue, access_weapons, access_forensics_lockers)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_court, access_weapons)

/datum/job/sheriff/get_access()
	var/list/L = list()
	L |= ..() | check_config_for_sec_maint()
	return L

/datum/outfit/job/sheriff
	name = "Security Officer"

	belt = /obj/item/device/pda/security
	ears = /obj/item/device/radio/headset/headset_sec/alt
	uniform = /obj/item/clothing/under/rank/security/sheriff
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/sec
	suit = /obj/item/clothing/suit/armor/vest/alt
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/weapon/restraints/handcuffs
	r_pocket = /obj/item/weapon/gun/energy/taser
	suit_store = /obj/item/weapon/gun/projectile/revolver/peacemaker
	backpack_contents = list(/obj/item/weapon/melee/baton/loaded=1)

	backpack = /obj/item/weapon/storage/backpack/security
	satchel = /obj/item/weapon/storage/backpack/satchel/sec
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag/sec
	box = /obj/item/weapon/storage/box/security