generated
scan33
	[ self recordMatch: #(39 50).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan33X1 ].
	('"{' includes: currentCharacter)
		ifTrue: [ [ self recordMatch: #(50).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter
								between: (Character value: 14)
								and: (Character value: 8231))
								or: [ currentCharacter >= (Character value: 8233) ] ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr
				or: [ currentCharacter = (Character value: 8232) ] ])
		ifTrue: [ ^ self scan20 ].
	true ] whileTrue