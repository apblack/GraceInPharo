minigrace failing
test013_badIfThenLayout_fail
	self bad: #Module parse: 'if (4<5)
then { print "4 is less than 5" }
else { print "oh dear" }
'
