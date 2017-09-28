generated
scan27X2
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan16 ].
							currentCharacter == $x
								ifTrue: [ self recordMatch: #(30 41).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan16 ].
									(currentCharacter <= $!
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ])
										ifTrue: [ ^ self scan15 ].
									^ self reportLastMatch ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $w)
												or: [ (currentCharacter between: $y and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan15 ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $h)
										or: [ (currentCharacter between: $j and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan15 ].
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $e)
								or: [ (currentCharacter between: $g and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch