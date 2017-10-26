generated-reduction actions
reduceActionForBlockBody1: nodes
	| result |
	result := GraceBlockBodyNode new.
	result addObject: (nodes at: 1) to: result items.
	result addNodes: ((nodes at: 2) at: 1) to: result _s.
	result addObjects: ((nodes at: 2) at: 2) to: result items.
	^ result