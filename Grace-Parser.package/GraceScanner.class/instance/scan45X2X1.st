generated
scan45X2X1
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan40 ].
			currentCharacter == $i
				ifTrue: [ self recordMatch: #(45).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan40 ].
					currentCharacter == $t
						ifTrue: [ self recordMatch: #(26 45).
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
								or: [ (currentCharacter between: $] and: $s)
										or: [ (currentCharacter between: $u and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan39 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $h)
								or: [ (currentCharacter between: $j and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan39 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch