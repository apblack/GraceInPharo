initialize-release
initialize
	| leftBrace rightBrace tokenActionsLiteral |
	super initialize.
	leftBrace := self symbolNames indexOf: '"{"'.
	rightBrace := self symbolNames indexOf: '"}"'.
	tokenActionsLiteral := GraceScanner new tokenActions.		"the literal array object"
	tokenActionsLiteral at: leftBrace put: #leftBrace.						"modifies the literal"
	tokenActionsLiteral at: rightBrace put: #rightBrace.					"modifies the literal"
	