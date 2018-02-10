visit methods
visitImplicitRequest: aReceiverlessRequest
	| defs theRequest |
	theRequest := aReceiverlessRequest request.
	defs := aReceiverlessRequest scope visibleDefinitionsOf: theRequest requestedName.
	defs isEmpty ifTrue: [ self undeclaredIdentifier: theRequest ].
	(defs size = 1) ifTrue: [ self updateImplicitRequest: aReceiverlessRequest using: defs first ].
	(defs size > 1) ifTrue: [ self ambiguityError: defs node: aReceiverlessRequest ].
	^ super visitImplicitRequest: aReceiverlessRequest