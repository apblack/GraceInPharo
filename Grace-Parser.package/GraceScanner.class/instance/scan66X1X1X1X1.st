generated
scan66X1X1X1X1
	[ self recordMatch: #(39).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan67 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self scan66X1X1X1X1X1