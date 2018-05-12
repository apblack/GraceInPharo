visitation
visitDottedRequest: aRequest
	^ GraceRequestAst 
			from: aRequest range
			scope: aRequest scope
			receiver: (aRequest receiver acceptVisitor: self) 
			requestedName: aRequest requestedName
			arguments: (GraceListAst from: (aRequest arguments collect: [ :each | each acceptVisitor: self ]))