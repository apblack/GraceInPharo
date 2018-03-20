coverage
testEmpty
	
	self assert: (empty at: key) equals: (IdentitySet new)
	