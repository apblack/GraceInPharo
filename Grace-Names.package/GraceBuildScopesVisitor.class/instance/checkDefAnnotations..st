checking
checkDefAnnotations: aDefDecl
	(aDefDecl isMarkerDeclaration not
		and: [ aDefDecl hasInitializer not ])
		ifTrue: [ GraceSyntaxError noInitializerIn: aDefDecl ].
	aDefDecl hasInitializer
		ifTrue: [ aDefDecl annotationNames
				do: [ :each | 
					(GraceParser isMarkerAnnotation: each)
						ifTrue: [ GraceSyntaxError initializerAndMarker: each on: aDefDecl ] ] ].
	(aDefDecl hasAnnotation: 'writable')
		ifTrue: [ GraceSyntaxError
				declaration: aDefDecl
				cannotBeMadeWritable: aDefDecl annotation ].
	(aDefDecl hasAnnotation: 'confidential')
		ifTrue: [ aDefDecl annotationNames
				do: [ :each | 
					(GraceParser confidentialConflictsWith: each)
						ifTrue: [ GraceSyntaxError
								annotation: each
								conflictsWith: 'confidential'
								in: aDefDecl annotation ] ] ]