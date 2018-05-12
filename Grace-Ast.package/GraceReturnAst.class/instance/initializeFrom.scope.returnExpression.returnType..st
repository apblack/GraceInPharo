instance initialization
initializeFrom: aRange scope: aScope returnExpression: anExpr returnType: aTypeExpr
	self initializeFrom: aRange scope: aScope.
	returnExpression := anExpr.
	declaredType := aTypeExpr 