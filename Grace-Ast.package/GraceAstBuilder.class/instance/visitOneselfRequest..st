visitation
visitOneselfRequest: aOneselfRequest
	^ GraceRequestAst  
			from: aOneselfRequest range
			scope: aOneselfRequest scope
			receiver:  (GraceOneselfAst 
								from: aOneselfRequest receiver range
								scope: aOneselfRequest scope
								objectsOut: aOneselfRequest objectsOut 
								referencedScope: aOneselfRequest referencedScope)
			requestedName: aOneselfRequest requestedName
			arguments: (GraceListAst from: 
				(aOneselfRequest arguments collect: [ :each | each acceptVisitor: self ]))