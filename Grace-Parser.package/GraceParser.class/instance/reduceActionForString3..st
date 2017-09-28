generated-reduction actions
reduceActionForString3: nodes
	| result |
	result := GraceUninterpretedStringNode new.
	result stringLiteral: (nodes at: 1).
	^ result