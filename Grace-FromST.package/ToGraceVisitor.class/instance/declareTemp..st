temporaries
declareTemp: aTemporaryNode 
	| tempName |
	tempName := aTemporaryNode name.
	(self isAssignedOnce: tempName) ifFalse: [ 
		self << 'var ' << tempName.
		self newline
	]