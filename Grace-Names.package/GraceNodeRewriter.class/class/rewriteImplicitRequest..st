request rewriting
rewriteImplicitRequest: anImplicitRequest
	| defs theRequest |
	theRequest := anImplicitRequest request.
	defs := GraceResolvedVariable 
					definitionsOf: theRequest requestedName visibleIn: anImplicitRequest scope.
	defs isEmpty
		ifTrue: [ ^ GraceNamingError undeclaredIdentifier: theRequest ].
	defs size = 1
		ifTrue: [ ^ self updateImplicitRequest: anImplicitRequest using: defs first ].
	self assert: [ defs size > 1 ].
	^ self ambiguityError: defs node: anImplicitRequest