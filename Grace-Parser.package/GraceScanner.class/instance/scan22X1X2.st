generated
scan22X1X2
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $p
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(28 39).
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
				or: [ (currentCharacter between: $] and: $o)
						or: [ (currentCharacter between: $q and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch