scopes
referencedScope
	| resultScope |
	resultScope := scope.
	self objectsOut timesRepeat: [
		resultScope := resultScope enclosingObjectScope ].
	^ resultScope