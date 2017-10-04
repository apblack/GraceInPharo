generated
scan57
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan57X1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan58 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan60 ].
	^ self scan57X2