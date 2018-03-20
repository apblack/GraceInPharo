instance initialization
initializeFrom: aCollection declaredId: anIdentifierAst initialValue: anExpressionAst 
	declaredThing := anIdentifierAst.
	rhs := anExpressionAst.
	self initializeFrom: aCollection