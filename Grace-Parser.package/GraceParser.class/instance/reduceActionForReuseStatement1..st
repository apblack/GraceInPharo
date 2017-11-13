generated-reduction actions
reduceActionForReuseStatement1: nodes
	| result |
	result := GraceReuseStatementNode new.
	result useToken: (nodes at: 1).
	result _parent: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result modifiers.
	^ result