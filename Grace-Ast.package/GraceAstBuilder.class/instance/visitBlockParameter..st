visitation
visitBlockParameter: aParameter
	^ GraceParameterAst 
		from: aParameter range
		scope: aParameter scope
		variable: aParameter variable
		declaredType: (aParameter pattern 
								ifNil: [GraceNullAst new] 
								ifNotNil: [ :pat | pat acceptVisitor: self ])