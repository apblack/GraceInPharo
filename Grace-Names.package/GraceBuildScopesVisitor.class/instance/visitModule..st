visit methods
visitModule: aModule
	self createScope: GraceModuleScope in: aModule.
	aModule dialect ifNil: [ 
		aModule scope outerScope: (GraceModuleRegistry attributeScopeOf: 'standardGrace')].
	^ super visitModule: aModule