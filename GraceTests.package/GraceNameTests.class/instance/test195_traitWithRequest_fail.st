minigrace failing
test195_traitWithRequest_fail
	self namingError: #Module parse: 'trait catClass {
    method move { "walk" }
    print "A cat was created"   // makes this not a trait.
}
'
