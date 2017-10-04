generated
scan82
	[ self recordMatch: #(40 51).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(40 51).
					self step.
					currentCharacter isDigit ] whileTrue.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan83 ].
					(currentCharacter <= $/
						or: [ (currentCharacter between: $: and: $D)
								or: [ (currentCharacter between: $F and: $d)
										or: [ (currentCharacter between: $f and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
						ifTrue: [ [ self recordMatch: #(40).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $/
				or: [ (currentCharacter between: $: and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan83 ].
	(currentCharacter <= $-
		or: [ currentCharacter == $/
				or: [ (currentCharacter between: $: and: $D)
						or: [ (currentCharacter between: $F and: $d)
								or: [ (currentCharacter between: $f and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch