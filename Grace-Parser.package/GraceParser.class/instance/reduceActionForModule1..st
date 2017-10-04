generated-reduction actions
reduceActionForModule1: nodes
	| result |
	result := GraceModuleNode new.
	result body: (nodes at: 1).
	^ result