adding
add: aVariable withName: aString
	| priorDeclaration |
	self assert: (aString isKindOf: String).
	priorDeclaration := names at: aString ifAbsent: [ ^ names at: aString put: aVariable ].
	^ self redeclarationError: 
			('Sorry, you can''t declare `{1}` as a {2}; it''s already declared as a {3} on line {4}, which is in the same scope' 
			format: { 
				aString . aVariable kind . priorDeclaration kind . priorDeclaration startPosition printString }  )
	