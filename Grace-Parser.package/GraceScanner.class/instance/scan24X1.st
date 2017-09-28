generated
scan24X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $s
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(29 41).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan16 ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter >= $| ] ] ])
								ifTrue: [ ^ self scan15 ].
							^ self reportLastMatch ] ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $`)
						or: [ (currentCharacter between: $b and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch