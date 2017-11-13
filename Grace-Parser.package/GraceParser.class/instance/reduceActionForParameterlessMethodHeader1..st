generated-reduction actions
reduceActionForParameterlessMethodHeader1: nodes
	| result |
	result := GraceParameterlessMethodHeaderNode new.
	result part: (nodes at: 1).
	result typeParameter: (nodes at: 2).
	^ result