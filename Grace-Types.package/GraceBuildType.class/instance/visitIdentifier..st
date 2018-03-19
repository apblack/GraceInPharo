visiting
visitIdentifier: anIdentifier
	anIdentifier isAnonymous ifTrue: [ ^ nil ].
	anIdentifier variable ifNil: [ ^ nil ].
	anIdentifier variable isType ifFalse: [ ^ GraceTypeError notAType: anIdentifier ].
	^ anIdentifier variable