lookup
at: aName
	"answers the module registered aith aName"
	^ self at: aName ifAbsent: [
		GraceCompilationError signal: 'Module ' , aName , ' has not been compiled']