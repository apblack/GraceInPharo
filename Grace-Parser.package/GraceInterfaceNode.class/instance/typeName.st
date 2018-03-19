printing
typeName
	(parent isTypeExpression and: [ parent parent isTypeDeclaration ]) ifTrue: [ ^ parent parent declaredName ].
	^ String streamContents: [ :s | self printOn: s ]