generated-reduction actions
reduceActionForWhereCondition1: nodes
	| result |
	result := GraceWhereConditionNode new.
	result idToken: (nodes at: 1).
	result typeRelationToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result