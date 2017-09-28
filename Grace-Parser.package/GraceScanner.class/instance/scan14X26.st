generated
scan14X26
	self recordMatch: #(33 41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch