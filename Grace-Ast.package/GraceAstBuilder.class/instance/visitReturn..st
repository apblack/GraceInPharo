visitation
visitReturn: aReturn
	^ GraceReturnAst 
		from: aReturn range
		scope: aReturn scope
		returnExpression: (aReturn value 
							ifNil: [ GraceDoneAst instance ]
							ifNotNil: [ :v | v acceptVisitor: self ]) 
		returnType: (aReturn declaredType 
							ifNil: [ GraceUnknownType instance ]
							ifNotNil: [ :t | t acceptVisitor: self ])