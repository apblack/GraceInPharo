lookup
lookup: aName
	"answers the module registered with aName"
	^ self lookup: aName ifAbsent: [ self class tryToCompile: aName ]