generated
visitAssignmentRequest: aRequest
	^ GraceRequestAst 
			from: aRequest range
			scope: aRequest scope
			receiver: (aRequest receiver acceptVisitor: self) 
			requestedName: aRequest requestedName
			argument: (aRequest arg acceptVisitor: self)