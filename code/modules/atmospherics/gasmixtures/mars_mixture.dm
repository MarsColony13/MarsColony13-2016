/datum/gas_mixture/mars

/datum/gas_mixture/mars/New()
	..()
	assert_gas("o2")
	assert_gas("co2")
	assert_gas("n2")
	gases["o2"][MOLES] += 0.015
	gases["co2"][MOLES] += 1.425
	gases["n2"][MOLES] += 0.06
	temperature = 203.15
	temperature_archived = 203.15
