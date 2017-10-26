generated
scan31
	self recordMatch: #(59).
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	^ self scan31X2