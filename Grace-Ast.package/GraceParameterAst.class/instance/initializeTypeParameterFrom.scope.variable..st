initialization
initializeTypeParameterFrom: aRange scope: aScope variable: aVariable
	self initializeFrom: aRange scope: aScope.
	variable := aVariable.
	declaredType := nil.
	isTypeParameter := true