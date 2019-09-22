temporaries
declareTemp: aTemporaryNode 
	| tempName |
	tempName := aTemporaryNode nameForGrace.
	(self isAssignedOnce: tempName) ifFalse: [ 
		self << 'var ' << tempName.
		self newline
	]