collection compatibility
add: anElement 
	self assert: (anElement isKindOf: GraceRootAst).
	^ self innerList add: anElement