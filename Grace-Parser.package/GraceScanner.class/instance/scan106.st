generated
scan106
	self recordMatch: #(44).
	self step.
	(currentCharacter between: $0 and: $9)
		ifTrue: [ ^ self scan107 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(44).
			self step.
			(currentCharacter between: $0 and: $9)
				ifTrue: [ ^ self scan107 ].
			(currentCharacter <= $/
				or: [ (currentCharacter between: $: and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(44).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $*
		or: [ currentCharacter == $,
				or: [ (currentCharacter between: $. and: $/)
						or: [ (currentCharacter between: $: and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch