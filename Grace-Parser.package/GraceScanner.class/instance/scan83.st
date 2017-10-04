generated
scan83
	self recordMatch: #(40).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan84 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan84 ].
			(currentCharacter <= $/
				or: [ (currentCharacter between: $: and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $*
		or: [ currentCharacter == $,
				or: [ (currentCharacter between: $. and: $/)
						or: [ (currentCharacter between: $: and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch