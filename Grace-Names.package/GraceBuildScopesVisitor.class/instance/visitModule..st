visit methods
visitModule: aModule
	self createScope: GraceModuleScope in: aModule.
	aModule dialect ifNil: [ aModule scope outerScope: (self standardGraceDialectScopeFor: aModule)].
	^ super visitModule: aModule