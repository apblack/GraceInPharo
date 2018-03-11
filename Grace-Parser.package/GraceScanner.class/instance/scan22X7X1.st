generated
scan22X7X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(23 39).
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
								or: [ (currentCharacter between: $] and: $r)
										or: [ (currentCharacter between: $t and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $`)
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $h)
						or: [ (currentCharacter between: $j and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch