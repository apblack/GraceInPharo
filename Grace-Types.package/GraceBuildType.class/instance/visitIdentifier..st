visitation
visitIdentifier: anIdentifier
	anIdentifier isAnonymous ifTrue: [ ^ self error: 'annonymous identifer found in an expression' ].
	anIdentifier variable ifNil: [ ^ self error: 'identifier not bound to a variable' ].
	anIdentifier variable isType ifFalse: [ ^ GraceTypeError notAType: anIdentifier ].
	^ anIdentifier variable