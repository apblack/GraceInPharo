initialization
makeActionAt: ix of: collection be: action
	[collection size < ix] whileTrue: [collection addLast: nil].
	collection at: ix put: action
		