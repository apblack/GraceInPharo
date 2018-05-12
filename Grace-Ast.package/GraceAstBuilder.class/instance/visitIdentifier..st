visitation
visitIdentifier: anIdentifier
	^ GraceIdentiferAst 
		from: anIdentifier range
		scope: anIdentifier scope
		variable: (anIdentifier variable)