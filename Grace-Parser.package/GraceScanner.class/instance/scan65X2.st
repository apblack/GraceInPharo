generated
scan65X2
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan65X1 ].
	^ self scan65X2X1