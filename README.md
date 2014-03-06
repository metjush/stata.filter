stata.filter
============

Filter package for Stata to temporary restrict data sets

Function filter temporarily filters data so that you can use the restricted dataset without deleting data.
It takes one parameter <condition> which is the drop condition for the restricted data set.

Ex: I want to look at females only in my data. The boolean is female, which is true for females and false for males.

. filter !female

This will get me a dataset with only female observations

Function unfilter reverts back to the original dataset, takes no parameters.

. unfilter

Function finish is to be called at the end of the do file to remove any temporary datasets and close your log file.
Takes no parameters.

. finish
