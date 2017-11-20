generated-reduction actions
reduceActionForModule1: nodes
	| result |
	result := GraceModuleNode new.
	result addNode: (nodes at: 1) to: result _s.
	result addNodes: ((nodes at: 2) at: 1) to: result pragmas.
	result addNodes: ((nodes at: 2) at: 2) to: result _s.
	result dialect: ((nodes at: 3) at: 1).
	result addNode: ((nodes at: 3) at: 2) to: result _s.
	result addObjects: ((nodes at: 4) at: 1) to: result items.
	result addNodes: ((nodes at: 4) at: 2) to: result _s.
	result addObject: (nodes at: 5) to: result items.
	^ result