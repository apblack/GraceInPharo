generated
scan92X11
	self recordMatch: #(23 43).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self scan103 ].
	(currentCharacter <= $Z
		or: [ (currentCharacter between: $\ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch