error reporting
dialectError: aString 
	^ GraceCompilationError signal: aString node: (GraceRange from: 1 to: 0)