adding local
add: aVariable withName: aString
	aVariable isExplicitMethod ifTrue: [ 
		self structuralError: 'Sorry, you can''t declare a method immediately inside a method' 
			  variable: aVariable].
	^ super add: aVariable withName: aString