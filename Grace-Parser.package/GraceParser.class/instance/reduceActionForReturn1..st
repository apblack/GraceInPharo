generated-reduction actions
reduceActionForReturn1: nodes
	| result |
	result := GraceReturnNode new.
	result returnToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result