initialization
initialize
	"initialize my instance variables"

	| testDirectory sourceDirectory dialectsDirectory |
	self createTestSubclassIfNecessary.
	testDirectory := self class testDirectory.
	testFiles := testDirectory children select: [ :each | 't*_test.grace' match: each basename ].
	sourceDirectory := self class minigraceDirectory.
	sourceFiles := sourceDirectory children select: [ :each | '*.grace' match: each basename ].
	dialectsDirectory := self class dialectsDirectory.