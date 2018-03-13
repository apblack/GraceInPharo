generated-reduction actions
reduceActionForIdentifier1: nodes
	| result |
	result := OSIdentifier new.
	result idToken: (nodes at: 1).
	^ result