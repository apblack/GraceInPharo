generated
scan22X2
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(9 39).
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
						or: [ (currentCharacter between: $] and: $e)
								or: [ (currentCharacter between: $g and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scan22X2X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $h)
								or: [ (currentCharacter between: $j and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch