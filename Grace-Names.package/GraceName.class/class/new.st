instance creation
new
	(self == GraceName) ifTrue: [ 
		self error: 'class GraceName should not be instantiated; use the approriate subclass' ].
	^ super new