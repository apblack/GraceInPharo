lookup
at: aName
	"answers the module registered with aName"
	^ self at: aName ifAbsent: [
		GraceCompilationError signal: 'Module ' , aName , ' has not been compiled']