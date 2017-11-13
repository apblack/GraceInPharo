generated
scan105X5
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan106 ].
	(currentCharacter <= $-
		or: [ currentCharacter == $/
				or: [ (currentCharacter between: $: and: $D)
						or: [ (currentCharacter between: $F and: $d)
								or: [ (currentCharacter between: $f and: $w)
										or: [ (currentCharacter between: $y and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ])
		ifTrue:
			[ self scan105X4 ].
	^ self reportLastMatch