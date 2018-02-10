checking
reportIf: childToken isNotAChildOf: parentToken 
	| parentClass childClass |
	parentClass := Smalltalk globals at: ('Grace' , parentToken value , 'Node') asSymbol ifAbsent: [ self error: parentToken , ' does not exist' ].
	childClass := Smalltalk globals at: ('Grace' , childToken value , 'Node') asSymbol ifAbsent: [ self error: childToken , ' does not exist' ].
	(childClass superclass = parentClass) ifFalse: [ 
		violations add: ('{1} should have {2} as its parent (currently the parent is {3})' 
						format: {childClass name . parentClass name . childClass superclass name}) ]