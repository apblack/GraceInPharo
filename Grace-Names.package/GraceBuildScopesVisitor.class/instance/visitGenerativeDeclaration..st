visit methods
visitGenerativeDeclaration: aGenDeclaration
	
	(aGenDeclaration isMarkerDeclaration not and: [ aGenDeclaration hasBody not ]) ifTrue: [ 
		GraceSyntaxError noBodyIn: aGenDeclaration ].
	(aGenDeclaration hasBody) ifTrue: [ 
		aGenDeclaration annotationNames do: [ :each | 
			(GraceParser isMarkerAnnotation: each) ifTrue: [ 
				GraceSyntaxError bodyAndMarker: each on: aGenDeclaration ] ] ].
	(aGenDeclaration hasAnnotations: 'public' and: 'confidential') ifTrue: [ 
		GraceSyntaxError annotation: 'public' conflictsWith: 'confidential' in: aGenDeclaration annotation ].
	(aGenDeclaration hasAnnotation: 'writable') ifTrue: [ 
		GraceSyntaxError declaration: aGenDeclaration cannotBeMadeWritable: aGenDeclaration annotation ].
	aGenDeclaration scope add: (GraceMethod fromParseTreeNode: aGenDeclaration). 
	self createScope: aGenDeclaration scopeKind in: aGenDeclaration.
	^ super visitGenerativeDeclaration: aGenDeclaration