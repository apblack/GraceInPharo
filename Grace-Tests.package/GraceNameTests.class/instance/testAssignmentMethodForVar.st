tests
testAssignmentMethodForVar
	| result |
	result := self good: #Module parse: 'var numberOfErrorsToRerun
'.
	self assert: (result scope lookup: 'numberOfErrorsToRerun:=(_)') class equals: GraceImplicitMethod.