test helpers
checkAllNodesAreAst: anAstNode
	self assert: (anAstNode isKindOf: GraceRootAst) 
			description: anAstNode printString , ' is not an AST node'.
	anAstNode class allInstVarNames do: [ :name |
		(anAstNode respondsTo: name) ifTrue: [  |child|
			child := anAstNode perform: name.
			child ifNotNil: [  
				self deny: (child className endsWith: 'Node') description: ['Parse tree node ' , child className , ' found in Ast'].
				self assert: ((child isKindOf: GraceRootAst) or: [ child isKindOf: GraceRange ]).
				(child isKindOf: GraceRootAst) ifTrue: [self checkAllNodesAreAst: child] ] ] ]
	