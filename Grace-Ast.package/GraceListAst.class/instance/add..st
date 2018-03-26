collection compatibility
add: anElement 
	self assert: (anElement isKindOf: GraceRootAst).
	^ innerList add: anElement