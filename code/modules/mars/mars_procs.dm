proc/set_mars_mining_baseturfs()//Fixes instances of floors on the mars mining map that might not have the right baseturfs set
	for(var/turf/T in world)
		if(T.z == ZLEVEL_MINING)
			if(istype(T, /turf/open/floor) && T.type != /turf/open/floor/plating)
				var/turf/open/floor/O
				T = O
				if(O.baseturf != /turf/open/floor/plating/mars/polar/snow)
					O.baseturf = /turf/open/floor/plating/mars/polar/snow
			else if(istype(T, /turf/closed))
				var/turf/closed/C
				T = C
				if(C.baseturf != /turf/open/floor/plating/snowed/mars)
					C.baseturf = /turf/open/floor/plating/snowed/mars
