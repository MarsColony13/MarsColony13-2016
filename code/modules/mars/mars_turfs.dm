//Mars Surface Turfs
/turf/open/floor/plating/mars
	name = "\proper sand"
	var/environment_type = "marssand"
	icon_state = "marssand0"
	initial_gas_mix = "co2=1.425;o2=0.015;n2=0.06;TEMP=213.15"//95% CO2, 1% oxygen, 4% N2, -60C, 213.16K
	planetary_atmos = TRUE
	baseturf = /turf/open/floor/plating/mars
	temperature = 213.15
	var/floor_variance = 30

/turf/open/floor/plating/mars/New()
	var/proper_name = name
	..()
	name = proper_name
	if(prob(floor_variance))
		icon_state = "[environment_type][rand(0,12)]"

/turf/open/floor/plating/mars/break_tile()
	return

/turf/open/floor/plating/mars/burn_tile()
	return

/turf/open/floor/plating/mars/ex_act()
	return

/turf/open/floor/plating/mars/singularity_pull(S, current_size)
	return

/turf/closed/mineral/mars
	name = "rock"
	icon_state = "marsrock"
	environment_type = "mars"
	smooth_icon = 'icons/turf/marsrock.dmi'
	turf_type = /turf/open/floor/plating/mars
	baseturf = /turf/open/floor/plating/mars
	defer_change = 1
	temperature = 213.15