visit methods
visitAnnotation: anAnnotation
	"checek that all of the annotations are declared as annotations"
	anAnnotation anns do: [ :anAnnLabel |   	| def |
		def := anAnnotation scope lookup: anAnnLabel requestedName ifAbsent: [
			^ GraceNamingError undeclaredIdentifier: anAnnLabel ].
		def isAnnotation ifFalse: [ ^ GraceNamingError definition: def usedAsAnnotation: anAnnLabel ] ]