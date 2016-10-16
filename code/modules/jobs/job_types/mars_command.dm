/*
Captain
*/
/datum/job/director
	title = "Colony Director"
	flag = DIRECTOR
	department_head = list("Centcom")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Central Command"
	selection_color = "#ccccff"
	req_admin_notify = 1
	minimal_player_age = 14

	outfit = /datum/outfit/job/director

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()

/datum/job/director/get_access()
	return get_all_accesses()


/datum/outfit/job/director
	name = "Director"

	id = /obj/item/weapon/card/id/gold
	belt = /obj/item/device/pda/captain
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/device/radio/headset/heads/captain/alt
	gloves = /obj/item/clothing/gloves/color/captain
	uniform =  /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/armor/vest/capcarapace
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/caphat
	backpack_contents = list(/obj/item/weapon/melee/classic_baton/telescopic=1, /obj/item/station_charter=1)

	backpack = /obj/item/weapon/storage/backpack/captain
	satchel = /obj/item/weapon/storage/backpack/satchel/cap
	dufflebag = /obj/item/weapon/storage/backpack/dufflebag/captain

/datum/outfit/job/director/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	var/obj/item/clothing/under/U = H.w_uniform
	U.attachTie(new /obj/item/clothing/tie/medal/gold/captain())

	if(visualsOnly)
		return

	var/obj/item/weapon/implant/mindshield/L = new/obj/item/weapon/implant/mindshield(H)
	L.imp_in = H
	L.implanted = 1
	H.sec_hud_set_implants()

	minor_announce("Colony Director [H.real_name] has arrived!")