coverage
testIncludes
	empty at: key add: 17.
	empty at: key add: 19.
	self assert: (empty at: key includes: 17).
	self assert: (empty at: key includes: 19).
	self deny: (empty at: key includes: 21)	