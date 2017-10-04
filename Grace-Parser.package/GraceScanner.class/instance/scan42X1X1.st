generated
scan42X1X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan42X1X1X1 ].
	^ self scan42X1X1X2