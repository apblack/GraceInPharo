visiting
visitAssignmentNode: anAssignment
	| lhs |
	lhs := anAssignment variable.
	(lhs isTemp and: [self isAssignedOnce: lhs name]) ifTrue: [ 
		self << 'def '.
		self visitNode: lhs.
		self << '= '
	] ifFalse: [
		self visitNode: lhs.
		self << ':= '
	].
	self visitNode: anAssignment value