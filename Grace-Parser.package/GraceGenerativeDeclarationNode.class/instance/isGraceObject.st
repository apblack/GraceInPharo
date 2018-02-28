testing
isGraceObject
	^ self parent declaredName = 'graceObject' and: 
		[ self parent parent declaredName = 'module intrinsic' ]