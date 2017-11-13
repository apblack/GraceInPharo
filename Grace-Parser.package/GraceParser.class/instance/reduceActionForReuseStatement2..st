generated-reduction actions
reduceActionForReuseStatement2: nodes
	| result |
	result := GraceReuseStatementNode new.
	result inheritToken: (nodes at: 1).
	result _parent: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result modifiers.
	^ result