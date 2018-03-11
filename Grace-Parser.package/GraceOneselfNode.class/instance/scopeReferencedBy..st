scopes
scopeReferencedBy: aRequestPart
	| currentScope |
	currentScope := self scope.
	self objectsOut timesRepeat: [  currentScope := currentScope enclosingObjectScope ].
	^ (currentScope lookupLocallyOrReused: aRequestPart requestedName ifAbsent: [ 
		^ self error: 'name resolution is broken' ] ) attributeScope