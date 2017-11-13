generated
scan105X1
	self recordMatch: #(44).
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(44 57).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: $@)
				or: [ (currentCharacter between: $[ and: $`)
						or: [ (currentCharacter between: ${ and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch