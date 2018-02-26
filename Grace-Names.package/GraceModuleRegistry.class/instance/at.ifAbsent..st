lookup
at: aName ifAbsent: aBlock
	"answers the module registered aith aName"
	^ modules at: aName ifAbsent: aBlock