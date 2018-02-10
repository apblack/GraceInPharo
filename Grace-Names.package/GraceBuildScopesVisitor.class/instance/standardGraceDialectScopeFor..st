scope creation
standardGraceDialectScopeFor: aModule
	^ GraceModuleRegistry 
		ifNotNil: [ (
			GraceModuleRegistry uniqueInstance 
				at: 'standardGrace' 
				ifAbsent: [GraceCompilationError 
									signal: 'dialect standardGrace is not defined' 
									withTag: aModule ] ) scope ]
		ifNil: [ self dummyDialectScope ]
		