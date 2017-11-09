test helpers
assert: astNode isA: kind
	"kind should be the name of a non-termainal in the grammar."
	
	self assert: (astNode isKindOf: ( Smalltalk globals at: ('Grace' , kind, 'Node') asSymbol ))
		description: ['AST node is a {1}, but should be a {2}' format: { astNode nodeKind, kind } ]