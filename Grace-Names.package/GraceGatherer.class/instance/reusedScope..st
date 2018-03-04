scope building
reusedScope: aGraceReuseStatement
	"answers the scope referenced by the super expression"
	| expr |
	expr := aGraceReuseStatement superExpr.
	expr startsWithSelf
		ifTrue: [ self selfReuseError: aGraceReuseStatement ].
	^ expr objectScopeFor: aGraceReuseStatement