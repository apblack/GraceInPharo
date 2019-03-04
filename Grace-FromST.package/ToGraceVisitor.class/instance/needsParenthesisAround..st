private
needsParenthesisAround: arg 
	| p |
	arg isBlock ifTrue: [^ false].
	arg isLiteralNode ifTrue: [^ false].
	arg isDynamicArray ifTrue: [^ false].
	arg isVariable ifTrue: [^ false].
	(arg isMessage and: [arg isUnary]) ifTrue: [^ false].
	p := arg parent.
	(arg isMessage and: [p isMessage and: [arg selector = p selector]]) ifTrue: [^ false].
	^ true