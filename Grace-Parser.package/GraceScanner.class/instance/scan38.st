generated
scan38
	[ self recordMatch: #(39 52).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $/)
				or: [ (currentCharacter between: $: and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch