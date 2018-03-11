generated
scan22X7
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan22X7X1 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(17 39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch