generated
scan1X19
	self recordMatch: #(42 43).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan2 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch