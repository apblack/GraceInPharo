generated
scan14X6
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan14X6X1 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(7 41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $m)
						or: [ (currentCharacter between: $o and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch