generated
scan26X2
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $r
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan16 ].
							currentCharacter == $d
								ifTrue: [ self recordMatch: #(41).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan16 ].
									currentCharacter == $e
										ifTrue: [ self recordMatch: #(3 41).
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
												or: [ (currentCharacter between: $] and: $d)
														or: [ (currentCharacter between: $f and: $z)
																or: [ currentCharacter >= $| ] ] ] ])
										ifTrue: [ ^ self scan15 ].
									^ self reportLastMatch ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $c)
												or: [ (currentCharacter between: $e and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan15 ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $h)
										or: [ (currentCharacter between: $j and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan15 ].
					^ self reportLastMatch ] ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch