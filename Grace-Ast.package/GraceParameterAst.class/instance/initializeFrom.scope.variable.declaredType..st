initialization
initializeFrom: aRange scope: aScope variable: aVariable declaredType: anExpression
	self initializeFrom: aRange scope: aScope.
	variable := aVariable.
	declaredType := anExpression.
	isTypeParameter := false