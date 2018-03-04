request rewriting
rewriteImplicitRequest: anImplictRequest
	| defs theRequest |
	theRequest := anImplictRequest request.
	defs := anImplictRequest scope
		visibleDefinitionsOf: theRequest requestedName.
	defs isEmpty
		ifTrue: [ self undeclaredIdentifier: theRequest ].
	defs size = 1
		ifTrue: [ self updateImplicitRequest: anImplictRequest using: defs first ].
	defs size > 1
		ifTrue: [ self ambiguityError: defs node: anImplictRequest ]