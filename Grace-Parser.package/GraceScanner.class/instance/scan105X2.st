generated
scan105X2
	[ self recordMatch: #(44 55).
	self step.
	currentCharacter between: $0 and: $9 ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan106 ].
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: $D)
				or: [ (currentCharacter between: $F and: $d)
						or: [ (currentCharacter between: $f and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch