generated-reduction actions
reduceActionForParameterlessMethodHeader1: nodes
	| result |
	result := GraceParameterlessMethodHeaderNode new.
	result part: (nodes at: 1).
	result typeParameterList: (nodes at: 2).
	^ result