instance creation
new
	(self == GraceAbstractVariable) ifTrue: [ 
		self error: 'class GraceName should not be instantiated; use the approriate subclass' ].
	^ super new