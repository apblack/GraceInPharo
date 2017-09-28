generated-reduction actions
reduceActionForString2: nodes
	| result |
	result := GraceStringConstructorNode new.
	result stringConstructor: (nodes at: 1).
	^ result