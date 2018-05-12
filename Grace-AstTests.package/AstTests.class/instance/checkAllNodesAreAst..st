test helpers
checkAllNodesAreAst: anAstNode
	self assert: (anAstNode isKindOf: GraceRootAst) 
			description: anAstNode printString , ' is not an AST node'.
	(anAstNode isKindOf: GraceListAst) ifTrue: [ 
		anAstNode do: [ :each | self checkAllNodesAreAst: each ]
	] ifFalse: [ 
		anAstNode class allInstVarNames do: [ :name |
			(anAstNode respondsTo: name) ifTrue: [  |child|
				child := anAstNode perform: name.
				(child isNotNil and: [ child ~= anAstNode ] ) ifTrue: [  
					self deny: (child className endsWith: 'Node') description: ['Parse tree node ' , child className , ' found in Ast'].
					self assert: child isOneOf: { GraceRootAst . GraceRange . GraceScope . GraceAbstractVariable . 
															GraceAbstractType . Number . String . Boolean . Collection }.
					((child isKindOf: Collection) and: [(child isKindOf: String) not]) ifTrue: [ 
							child do: [ :each | self assert: each isOneOf: {Number . String . Boolean} ] ].
					(child isKindOf: GraceRootAst) ifTrue: [self checkAllNodesAreAst: child] ] ] ]
	]