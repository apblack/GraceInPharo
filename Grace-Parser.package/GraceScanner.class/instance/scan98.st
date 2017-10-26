generated
scan98
	self recordMatch: #(43).
	self step.
	currentCharacter isDecimalDigit
		ifTrue: [ ^ self scan99 ].
	(currentCharacter isDashPunctuation or: [ currentCharacter == $+ ])
		ifTrue: [ self recordMatch: #(43).
			self step.
			currentCharacter isDecimalDigit
				ifTrue: [ ^ self scan99 ].
			(currentCharacter <= $/
				or: [ (currentCharacter between: $: and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(43).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $*
		or: [ currentCharacter == $,
				or: [ (currentCharacter between: $. and: $/)
						or: [ (currentCharacter between: $: and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch