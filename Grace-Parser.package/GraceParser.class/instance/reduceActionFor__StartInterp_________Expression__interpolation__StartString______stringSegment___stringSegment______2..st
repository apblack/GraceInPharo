generated-reduction actions
reduceActionFor__StartInterp_________Expression__interpolation__StartString______stringSegment___stringSegment______2: nodes
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	self add: ((nodes at: 2) at: 5) to: (result at: 5).
	^ result