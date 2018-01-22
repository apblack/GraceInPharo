minigrace bad
test195_traitWithRequest_fail
	self bad: #Module parse: 'trait catClass {
    method move { "walk" }
    print "A cat was created"   // makes this not a trait.
}
'
