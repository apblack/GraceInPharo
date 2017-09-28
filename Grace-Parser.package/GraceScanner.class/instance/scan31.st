generated
scan31
	self recordMatch: #(42).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan32 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter isDigit
				ifTrue: [ ^ self scan32 ].
			(currentCharacter <= $/
				or: [ (currentCharacter between: $: and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(42).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $*
		or: [ currentCharacter == $,
				or: [ (currentCharacter between: $. and: $/)
						or: [ (currentCharacter between: $: and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch