scope creation
dialectScopeFor: aDialectNode
	^ GraceModuleRegistry 
		ifNotNil: [ (
			GraceModuleRegistry uniqueInstance 
				at: aDialectNode name
				ifAbsent: [GraceCompilationError 
									signal: 'dialect ' , aDialectNode name , ' is not defined' 
									node: aDialectNode ] ) scope ]
		ifNil: [ self error: 'Grace module registry not available' ]
		