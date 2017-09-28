generated
scan21X1X1
	[ self recordMatch: #(41 43).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $/)
				or: [ (currentCharacter between: $: and: $D)
						or: [ (currentCharacter between: $F and: $[)
								or: [ (currentCharacter between: $] and: $d)
										or: [ (currentCharacter between: $f and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch