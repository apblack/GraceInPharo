visit methods
visitDialect: aDialect
	
	| dialectName |
	self assert: [ aDialect parent isModule ]. "enforced by the grammar"
	dialectName := aDialect name.
	(dialectName = 'none') ifFalse: [ 
		aDialect scope outerScope: (GraceModuleRegistry attributeScopeOf: aDialect name) ].
	^ super visitDialect: aDialect