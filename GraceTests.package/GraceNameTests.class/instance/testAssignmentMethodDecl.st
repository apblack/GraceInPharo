tests
testAssignmentMethodDecl
	| result |
	result := self good: #Module parse: 'import "gUnit" as gu
method numberOfErrorsToRerun := (n) {
    gu.numberOfErrorsToRerun := n
}'.
	self assert: (result scope lookup: 'numberOfErrorsToRerun:=(_)') class equals: GraceMethod.