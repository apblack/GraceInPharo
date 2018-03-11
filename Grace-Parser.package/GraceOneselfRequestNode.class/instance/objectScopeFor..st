as yet unclassified
objectScopeFor: aReuseStatementNode
	^ (receivingScope lookupLocallyOrReused: request requestedName ifAbsent: [ 
		^ self error: 'resolution of implicit requests is broken' ]) attributeScope