visit methods
visitModule: aModule
	self createScope: GraceModuleScope in: aModule.
	aModule dialect
		ifNil: [ self installScopeForDialect: 'standardGrace' outside: aModule scope ].
	^ super visitModule: aModule