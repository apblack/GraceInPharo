naming
typeName
	id ifNotNil: [ ^ id name ].
	parent isTypeDeclaration ifTrue: [ ^ parent declaredName ].
	^ 'anon type'