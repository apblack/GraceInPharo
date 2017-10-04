generated
scan67
	self recordMatch: #(39 48).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch