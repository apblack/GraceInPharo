visit methods
visitTypeDeclaration: aTypeDecl
	"Check for shadowing of the type parameters"
	aTypeDecl typeParameterList ifNotNil: [ :tp | tp scope reportShadowingErrors ].
	^ super visitTypeDeclaration: aTypeDecl 