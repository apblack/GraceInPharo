coverage
testAdd2
	empty at: key add: 17.
	empty at: key add: 19.
	self assert: (empty at: key) equals: (IdentitySet with: 17 with: 19)
	