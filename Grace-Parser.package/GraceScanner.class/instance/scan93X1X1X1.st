generated
scan93X1X1X1
	[ self recordMatch: #(43).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan94 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self scan93X1X1X1X1