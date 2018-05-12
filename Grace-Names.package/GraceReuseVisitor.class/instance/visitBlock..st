visit methods
visitBlock: aBlock
	"Check for shadowing"
	aBlock scope reportShadowingErrors.
	^ super visitBlock: aBlock 