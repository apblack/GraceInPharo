generated
scanForTokenX1
	self step.
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch