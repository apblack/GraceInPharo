visit methods
visitMethodDeclaration: aMethod
	"Check for shadowing"
	aMethod scope reportShadowingErrors.
	^ super visitMethodDeclaration: aMethod 