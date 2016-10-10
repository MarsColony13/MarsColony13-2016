//Mars Surface Turfs
/turf/open/floor/plating/mars
	name = "sand"
	icon_state = "asteroid0"
	initial_gas_mix = "co2=1.425;o2=0.015;n2=0.06;TEMP=213.15"//95% CO2, 1% oxygen, 4% N2, -60C, 213.16K
	planetary_atmos = TRUE
	baseturf = /turf/open/floor/plating/mars
	temperature = 213.15

/turf/open/floor/plating/mars/break_tile()
	return

/turf/open/floor/plating/mars/burn_tile()
	return

/turf/open/floor/plating/mars/ex_act()
	return

/turf/open/floor/plating/mars/singularity_pull(S, current_size)
	return

/turf/closed/mineral/mars
	environment_type = "mars"
	turf_type = /turf/open/floor/plating/mars
	baseturf = /turf/open/floor/plating/mars
	defer_change = 1
	temperature = 213.15
