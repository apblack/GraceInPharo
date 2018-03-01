generated
scan35X11
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(45).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					currentCharacter == $f
						ifTrue: [ self recordMatch: #(20 45).
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
								or: [ (currentCharacter between: $] and: $e)
										or: [ (currentCharacter between: $g and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $k)
								or: [ (currentCharacter between: $m and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch