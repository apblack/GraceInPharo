generated
scan22X1X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan22X1X1X1 ].
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(35 39).
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
						or: [ (currentCharacter between: $] and: $d)
								or: [ (currentCharacter between: $f and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $`)
						or: [ (currentCharacter between: $b and: $t)
								or: [ (currentCharacter between: $v and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch