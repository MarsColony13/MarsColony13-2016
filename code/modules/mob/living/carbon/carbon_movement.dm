/mob/living/carbon/movement_delay()
	. = ..()
	. += grab_state * 3 //can't go fast while grabbing something.

	if(!get_leg_ignore()) //ignore the fact we lack legs
		var/leg_amount = get_num_legs()
		. += 6 - 3*leg_amount //the fewer the legs, the slower the mob
		if(!leg_amount)
			. += 6 - 3*get_num_arms() //crawling is harder with fewer arms

	if(legcuffed)
		. += legcuffed.slowdown

var/const/NO_SLIP_WHEN_WALKING = 1
var/const/SLIDE = 2
var/const/GALOSHES_DONT_HELP = 4
var/const/SLIDE_ICE = 8

/mob/living/carbon/slip(s_amount, w_amount, obj/O, lube)
	if(!(lube&SLIDE_ICE))
		add_logs(src,, "slipped",, "on [O ? O.name : "floor"]")
	return loc.handle_slip(src, s_amount, w_amount, O, lube)

/mob/living/carbon/Process_Spacemove(movement_dir = 0)
	if(..())
		return 1
	if(!isturf(loc))
		return 0

	// Do we have a jetpack implant (and is it on)?
	var/obj/item/organ/cyberimp/chest/thrusters/T = getorganslot("thrusters")
	if(istype(T) && movement_dir && T.allow_thrust(0.01))
		return 1

	var/obj/item/weapon/tank/jetpack/J = get_jetpack()
	if(istype(J) && (movement_dir || J.stabilizers) && J.allow_thrust(0.01, src))
		return 1

/mob/living/carbon/Move(NewLoc, direct)
	. = ..()
	if(.)
		if(src.nutrition && src.stat != 2)
			src.nutrition -= HUNGER_FACTOR/10
			if(src.m_intent == "run")
				src.nutrition -= HUNGER_FACTOR/10
		if((src.disabilities & FAT) && src.m_intent == "run" && src.bodytemperature <= 360)
			src.bodytemperature += 2
	do_move_sounds(NewLoc)

/mob/living/carbon/proc/do_move_sounds(NewLoc)//Called in the Move() proc for carbon mobs.
	if(movesounds && NewLoc == loc && canStep())
		var/turf/open/T = NewLoc
		var/vol = 50 //How loud the footstep will be, percentage based.
		var/hear = 7 //How far away the footstep can be heard.
		var/range = 0 //The actual range derived from what the hear var is set to.
		switch(m_intent)
			if("run")
				vol = 50
				hear = 6
			if("walk")
				vol = 15
				hear = 3
		range = hear - 7 //Due to how the playsound() proc works, sounds have a default range of 7. This just helps non-coders add new steps and ranges.
		if(step > 0)
			if(T.turfstepsound)//If the override var is set, play the overriding sound.
				playsound(get_turf(src), T.turfstepsound, vol, 1, range)
			else if(T.wet)//If the turf is wet.
				playsound(get_turf(src), "step_puddle", vol, 1, range)
			else
				if(shoes)//Else, play the normal sound for their shoe type.
					if(istype(shoes, /obj/item/clothing/shoes/jackboots))
						playsound(get_turf(src), "step_boots", vol, 1, range)
					if(istype(shoes, /obj/item/clothing/shoes/magboots))
						playsound(get_turf(src), "step_boots", vol, 1, range)
					else if(istype(shoes, /obj/item/clothing/shoes/combat))
						playsound(get_turf(src), "step_boots", vol, 1, range)
					else if(istype(shoes, /obj/item/clothing/shoes/workboots))
						playsound(get_turf(src), "step_boots", vol, 1, range)
					else if(istype(shoes, /obj/item/clothing/shoes/winterboots))
						playsound(get_turf(src), "step_boots", vol, 1, range)
					else if(istype(shoes, /obj/item/clothing/shoes))
						playsound(get_turf(src), "step_shoes", vol, 1, range)
				else
					if(ishuman(src))
						var/mob/living/carbon/human/H = src
						if(H.socks && H.socks != "Nude")//Are they wearing socks? [SUPER STEALTH]
							playsound(get_turf(src), "step_socks", vol, 1, range)
						else if(stepsound)//They're not wearing shoes or socks, play the default sound associated with their mob type.
							playsound(get_turf(src), stepsound, vol, 1, range)
					else if(stepsound)
						playsound(get_turf(src), stepsound, vol, 1, range)
			step = 0
		else
			step++


/mob/living/carbon/proc/canStep()//A batch of checks to see if the mob moving can actually move on their own.
	if(health > 0 && !resting && !sleeping && !paralysis && has_gravity(src) && !buckled && !stat && isopenturf(loc) && !weakened && canmove)//wew lad there's probably some sort of ezpz proc for this somewhere
		return TRUE
	return FALSE
