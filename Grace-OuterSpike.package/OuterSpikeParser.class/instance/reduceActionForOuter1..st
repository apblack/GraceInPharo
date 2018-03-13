generated-reduction actions
reduceActionForOuter1: nodes
	| result |
	result := OSOuter new.
	result addToken: (nodes at: 1) to: result outers.
	^ result