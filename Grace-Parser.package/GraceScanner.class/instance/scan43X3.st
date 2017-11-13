generated
scan43X3
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan44 ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $-)
						or: [ currentCharacter == $/
								or: [ (currentCharacter between: $: and: $D)
										or: [ (currentCharacter between: $F and: $[)
												or: [ (currentCharacter between: $] and: $d)
														or: [ (currentCharacter between: $f and: $w)
																or: [ (currentCharacter between: $y and: $z)
																		or: [ currentCharacter >= $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch