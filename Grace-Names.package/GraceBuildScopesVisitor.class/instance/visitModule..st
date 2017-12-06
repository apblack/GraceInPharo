visit methods
visitModule: aModule
	self createScope: GraceModuleScope in: aModule.
	^ super visitModule: aModule