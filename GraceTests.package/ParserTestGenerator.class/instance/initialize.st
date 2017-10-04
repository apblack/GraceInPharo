initialization
initialize
	"initialize my instance variables"

	| testDirectory |
	self createTestSubclassIfNecessary.
	testDirectory := self class testDirectory.
	inputFileRefs := testDirectory children select: [ :each | 't*_test.grace' match: each basename ].