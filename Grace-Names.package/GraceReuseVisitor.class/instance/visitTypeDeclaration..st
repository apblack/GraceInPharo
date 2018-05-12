visit methods
visitTypeDeclaration: aTypeDecl
	"Check for shadowing of the type parameters"
	aTypeDecl typeParameters ifNotNil: [ :tp | tp scope reportShadowingErrors ].
	^ super visitTypeDeclaration: aTypeDecl 