generated-reduction actions
reduceActionForInheritStatement1: nodes
	| result |
	result := GraceInheritStatementNode new.
	result inheritToken: (nodes at: 1).
	result superExpr: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result modifiers.
	^ result