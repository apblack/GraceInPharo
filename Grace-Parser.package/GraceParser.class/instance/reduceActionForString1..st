generated-reduction actions
reduceActionForString1: nodes
	| result |
	result := GraceStringLiteralNode new.
	result stringLiteral: (nodes at: 1).
	^ result