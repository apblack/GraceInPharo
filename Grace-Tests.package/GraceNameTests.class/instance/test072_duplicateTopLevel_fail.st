minigrace failing
test072_duplicateTopLevel_fail
	self bad: #Module parse: 'method a { print "OK" }
method b {}
method a { print "not OK" }     // should be an error

a

'
