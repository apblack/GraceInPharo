instance creation
new
	(self == GraceAbstractVariable) ifTrue: [ 
		^ self error: self className , ' should not be instantiated; use the approriate subclass' ].
	^ super new