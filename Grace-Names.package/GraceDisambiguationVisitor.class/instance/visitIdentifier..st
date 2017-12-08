visit methods
visitIdentifier: anIdentifier

	| defs |
	anIdentifier isApplication ifTrue: [
		defs := anIdentifier scope visibleDefinitionsOf: anIdentifier name.
		defs isEmpty ifTrue: [ self undeclaredIdentifier: anIdentifier ].
		(defs size = 1) ifTrue: [ anIdentifier definingOccurence: defs first definition ].
		(defs size > 1) ifTrue: [ self ambiguityError: defs node: anIdentifier ]
		
	].
	^ super visitIdentifier: anIdentifier