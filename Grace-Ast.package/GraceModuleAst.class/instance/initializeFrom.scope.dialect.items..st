instance initialization
initializeFrom: aSourceRange scope: aScope dialect: aGraceDialectAst items: aGraceListAst 
	dialect := aGraceDialectAst.
	self initializeFrom: aSourceRange scope: aScope items: aGraceListAst.
	^ self