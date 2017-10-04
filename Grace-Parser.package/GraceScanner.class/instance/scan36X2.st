generated
scan36X2
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan37 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $-)
				or: [ currentCharacter == $/
						or: [ (currentCharacter between: $: and: $D)
								or: [ (currentCharacter between: $F and: $[)
										or: [ (currentCharacter between: $] and: $d)
												or: [ (currentCharacter between: $f and: $z)
														or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch