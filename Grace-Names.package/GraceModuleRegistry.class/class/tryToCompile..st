compiling modules
tryToCompile: aModule

	| compiler source |
	compiler := Smalltalk globals at: #GraceCompiler 
						ifAbsent: [^ GraceCompilationError signal: 'compiler not found' ].
	source := self locateSourceFor: aModule.
	^ compiler compileModule: source readStream named: aModule