naming
declaredName
	^ declaredName ifNil: [
		declaredName := parent isDeclaration ifTrue: [ 
			'object ' , parent declaredName
		] ifFalse: [ 
			'anonymous object'
		]
	]