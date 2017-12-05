visit methods
visitIdentifier: anIdentifier

	| variable |
	anIdentifier isApplication ifTrue: [ 
		variable := anIdentifier scope lookup: anIdentifier name
			ifAbsent: [ self undeclaredIdentifier: anIdentifier name , ' is undeclared' node: anIdentifier ]
 	].
	variable isMethod ifTrue: [ 
			self halt
	].
	^ super visitIdentifier: anIdentifier