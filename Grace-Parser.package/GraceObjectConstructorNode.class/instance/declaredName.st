naming
declaredName
	^ parent isDeclaration ifTrue: [ 
		'object ' , parent declaredName
	] ifFalse: [ 
		'anonymous object'
	]