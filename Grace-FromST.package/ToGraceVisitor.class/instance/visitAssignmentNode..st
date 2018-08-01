visiting
visitAssignmentNode: anAssignment
	(anAssignment variable isTemp and: [self isAssignedOnce: anAssignment variable name]) ifTrue: [ 
		self << 'def '.
		self visitNode: anAssignment variable.
		self << '= '
	] ifFalse: [
		self visitNode: anAssignment variable.
		self << ':= '
	].
	self visitNode: anAssignment value