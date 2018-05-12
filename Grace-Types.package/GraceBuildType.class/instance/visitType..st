visitation
visitType: aType
	"there are two options for aType: 
	    — an identifier, perhaps with type parameters, such as Function⟦V, R⟧, and
		 — a request with no arguments, perhaps with type parameters, such as collection.Enumerable⟦T⟧"
	
	| typeVar |
	typeVar := aType id 
			ifNil: [ aType receiver attributeScope lookup: aType request ] 
			ifNotNil: [ :id | self visitIdentifier: id] .
	^ aType typeArgList 
			ifNil: [ typeVar ]
			ifNotNil: [ :args |
				typeVar checkNumberOfTypeArguments: aType.
				typeVar instantiateWithArgs: (args typeArgs collect: [ :arg | arg acceptVisitor: self ]) ]