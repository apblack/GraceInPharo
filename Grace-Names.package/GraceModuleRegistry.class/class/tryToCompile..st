compiling modules
tryToCompile: aModuleName

	| compiler source |
	compiler := Smalltalk globals at: #GraceCompiler 
						ifAbsent: [^ GraceCompilationError signal: 'compiler not found' ].
	source := self locateSourceFor: aModuleName.
	^ compiler compileModule: source readStream named: aModuleName