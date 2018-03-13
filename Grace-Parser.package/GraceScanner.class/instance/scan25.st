generated
scan25
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan25X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(5 40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $l)
						or: [ (currentCharacter between: $o and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch