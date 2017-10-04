generated
scan73X11
	self recordMatch: #(40 42 43).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan75 ].
	^ self scan73X11X2