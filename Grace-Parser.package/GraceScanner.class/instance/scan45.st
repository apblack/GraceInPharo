generated
scan45
	[ self recordMatch: #(43 56).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $/)
						or: [ (currentCharacter between: $: and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch