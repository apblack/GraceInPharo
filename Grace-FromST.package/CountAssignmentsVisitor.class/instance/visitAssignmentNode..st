visiting
visitAssignmentNode: anAssignment
	| priorCount lhsName |
	lhsName := anAssignment variable name.
	priorCount := assignmentCounts at: lhsName ifAbsent: [ 0 ].
	assignmentCounts at: lhsName put: priorCount + 1