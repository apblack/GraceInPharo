generated
scan68
	self recordMatch: #(43 54).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	^ self scan68X3