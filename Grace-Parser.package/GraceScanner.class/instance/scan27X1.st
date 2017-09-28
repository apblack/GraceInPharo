generated
scan27X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $b
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan16 ].
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(1 41).
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
										or: [ (currentCharacter between: $] and: $b)
												or: [ (currentCharacter between: $d and: $z)
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
						or: [ (currentCharacter between: $] and: $k)
								or: [ (currentCharacter between: $m and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $a)
						or: [ (currentCharacter between: $c and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch