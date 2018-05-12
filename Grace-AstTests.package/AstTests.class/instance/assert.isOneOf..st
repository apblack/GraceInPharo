asserting
assert: astNode isOneOf: aCollectionOfClasses
	"check that astNode is a sub-instance of a member of aCollectionOfClasses"
	
	self assert: (aCollectionOfClasses anySatisfy: [ :each | astNode isKindOf: each ])
			description: ['found a ' , astNode class printString , ' in the AST'].