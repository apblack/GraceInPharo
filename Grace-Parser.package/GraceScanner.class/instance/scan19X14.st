generated
scan19X14
	self recordMatch: #(12 39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $^ and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch