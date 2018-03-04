request rewriting
rewriteIdentifier: anIdentifier
	| defs |
	defs := anIdentifier scope visibleDefinitionsOf: anIdentifier name.
	defs isEmpty
		ifTrue: [ self undeclaredIdentifier: anIdentifier ].
	defs size = 1
		ifTrue: [ self updateIdentifier: anIdentifier using: defs first ].
	defs size > 1
		ifTrue: [ self ambiguityError: defs node: anIdentifier ]