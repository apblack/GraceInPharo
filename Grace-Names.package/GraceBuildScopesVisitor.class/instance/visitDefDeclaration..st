visit methods
visitDefDeclaration: aDefDecl

	aDefDecl	id markAsDefinition.
	(aDefDecl hasMarkerAnnotation not and: [ aDefDecl hasInitializer not ]) ifTrue: [ 
		GraceSyntaxError noInitializerIn: aDefDecl ].
	(aDefDecl hasInitializer) ifTrue: [ 
		aDefDecl annotationNames do: [ :each | 
			(GraceParser isMarkerAnnotation: each) ifTrue: [ 
				self halt.
				GraceSyntaxError initializerAndMarker: each on: aDefDecl ] ] ].
	(aDefDecl hasAnnotations: 'public' and: 'confidential') ifTrue: [ 
		GraceSyntaxError annotation: 'public' conflictsWith: 'confidential' in: aDefDecl annotation ].
	aDefDecl id isAnonymous ifFalse: [ 
		aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) ].
	^ super visitDefDeclaration: aDefDecl