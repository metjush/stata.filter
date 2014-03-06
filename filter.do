/*
Filter package for Stata

Function filter temporarily filters data so that you can use the restricted dataset without deleting data
It takes one parameter <condition> which is the drop condition for the restricted data set.
Ex: I want to look at females only in my data. The boolean is female, which is true for females and false for males.
. filter !female
This will get me a dataset with only female observations

Function unfilter reverts back to the original dataset
Takes no parameters
. unfilter

Function finish is to be called at the end of the do file to remove any temporary datasets and close your log file
Takes no parameters
. finish

*/
program drop filter
program drop unfilter

program filter
	save unfiltered, replace
	drop if `0'
	save filtered, replace
	use filtered
	di "Conditions applied, using filtered data set"
end

program unfilter
	use unfiltered
	di "Filters removed, back to the original data set"
	erase filtered
end

program finish
	erase unfiltered
	log close
end
