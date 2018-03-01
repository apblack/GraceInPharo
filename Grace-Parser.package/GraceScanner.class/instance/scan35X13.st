generated
scan35X13
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(24 45).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $d)
								or: [ (currentCharacter between: $f and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $r)
						or: [ (currentCharacter between: $t and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch