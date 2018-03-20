instance initialization
initializeFrom: aSourceRange dialect: aGraceDialectAst items: aGraceListAst 
	dialect := aGraceDialectAst.
	self initializeFrom: aSourceRange items: aGraceListAst.
	^ self