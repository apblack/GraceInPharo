visiting
visitMethodNode: aMethod
	self doHeaderFor: aMethod.
	(CountAssignmentsVisitor withCountDictionary: tempAssignments) visitNode: aMethod.
	self doBodyFor: aMethod.
	self newline