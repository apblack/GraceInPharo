scope building
reusedScope: aGraceReuseStatement
	| expr |
	expr := aGraceReuseStatement superExpr.
	expr startsWithSelf
		ifTrue: [ self selfReuseError: aGraceReuseStatement ].
	^ expr objectScopeInScope: aGraceReuseStatement scope for: aGraceReuseStatement