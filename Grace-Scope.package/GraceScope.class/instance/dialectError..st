error handling
dialectError: aString 
	^ GraceCompilationError signal: aString withTag: (GraceRange from: 1 to: 0)