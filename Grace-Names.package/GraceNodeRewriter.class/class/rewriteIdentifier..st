request rewriting
rewriteIdentifier: anIdentifier
	| defs |
	anIdentifier isDefinition ifTrue: [ ^ anIdentifier ].	"we re-write just identifer applications"
	defs := GraceResolvedVariable definitionsOf: anIdentifier name visibleIn: anIdentifier scope.
	defs isEmpty
		ifTrue: [ ^ GraceNamingError undeclaredIdentifier: anIdentifier ].
	defs size = 1
		ifTrue: [ ^ self updateIdentifier: anIdentifier using: defs first ].
	defs size > 1
		ifTrue: [ ^ self ambiguityError: defs node: anIdentifier ]