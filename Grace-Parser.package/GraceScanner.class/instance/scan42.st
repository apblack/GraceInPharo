generated
scan42
	self recordMatch: #(61).
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan41 ].
	^ self scan42X2