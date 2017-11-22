tests
testAssignmentMethodDecl
	| result |
	result := self good: #Module parse: 'method numberOfErrorsToRerun := (n:Number) {
    gu.numberOfErrorsToRerun := n
}'.
	self assert: (result scope lookup: 'numberOfErrorsToRerun:=(_)') class equals: GraceMethod.