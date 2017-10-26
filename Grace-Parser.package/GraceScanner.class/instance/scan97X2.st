generated
scan97X2
	[ self recordMatch: #(43 54).
	self step.
	currentCharacter isDecimalDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan98 ].
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: $D)
				or: [ (currentCharacter between: $F and: $d)
						or: [ (currentCharacter between: $f and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch