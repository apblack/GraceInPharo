generated
scan24X2
	self recordMatch: #(42 59).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self scan24X2X1 ].
	^ self scan24X2X3