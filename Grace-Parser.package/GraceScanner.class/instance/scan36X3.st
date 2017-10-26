generated
scan36X3
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan37 ].
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
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch