request rewriting
rewriteImplicitRequest: anImplictRequest
	| defs theRequest |
	theRequest := anImplictRequest request.
	defs := GraceResolvedVariable 
					definitionsOf: theRequest requestedName visibleIn: anImplictRequest scope.
	defs isEmpty
		ifTrue: [ ^ GraceNamingError undeclaredIdentifier: theRequest ].
	defs size = 1
		ifTrue: [ ^ self updateImplicitRequest: anImplictRequest using: defs first ].
	self assert: [ defs size > 1 ].
	^ self ambiguityError: defs node: anImplictRequest