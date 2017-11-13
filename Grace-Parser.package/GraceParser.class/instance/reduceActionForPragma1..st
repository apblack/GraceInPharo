generated-reduction actions
reduceActionForPragma1: nodes
	| result |
	result := GracePragmaNode new.
	result _pragmaToken: (nodes at: 1).
	result pragma: (nodes at: 2).
	^ result