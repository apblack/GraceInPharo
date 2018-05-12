accessing
numberOfTypeParameters
	^ typeParameters 
		ifNil: [ 0 ]
		ifNotNil: [ typeParameters size ]