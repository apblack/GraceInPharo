temporaries
declareTemp: aTemporaryNode 
	(self isAssignedOnce: aTemporaryNode name) ifFalse: [ 
		self << 'var ' << aTemporaryNode name.
		self newline
	]