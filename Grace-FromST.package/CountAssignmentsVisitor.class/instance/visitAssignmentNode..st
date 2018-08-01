visiting
visitAssignmentNode: anAssignment
	| priorCount |
	priorCount := assignmentCounts at: anAssignment variable ifAbsent: [ 0 ].
	assignmentCounts at: anAssignment variable name put: priorCount + 1