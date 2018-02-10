generated
scan44
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan44X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan45 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(6 45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan40 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan39 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $l)
						or: [ (currentCharacter between: $o and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch