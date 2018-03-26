test helpers
assert: ptNode isA: kind
	"kind should be the name of a non-termainal in the grammar."
	
	self assert: (ptNode isKindOf: ( Smalltalk globals at: ('Grace' , kind, 'Node') asSymbol ))
		description: ['Parse tree node is a {1}, but should be a {2}' format: { ptNode nodeKind . kind } ]