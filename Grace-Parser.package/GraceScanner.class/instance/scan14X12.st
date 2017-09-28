generated
scan14X12
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $k
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $o
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan16 ].
							currentCharacter == $w
								ifTrue: [ self recordMatch: #(41).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan16 ].
									currentCharacter == $n
										ifTrue: [ self recordMatch: #(8 41).
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
												or: [ (currentCharacter between: $] and: $m)
														or: [ (currentCharacter between: $o and: $z)
																or: [ currentCharacter >= $| ] ] ] ])
										ifTrue: [ ^ self scan15 ].
									^ self reportLastMatch ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $v)
												or: [ (currentCharacter between: $x and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan15 ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $n)
										or: [ (currentCharacter between: $p and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan15 ].
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $m)
								or: [ (currentCharacter between: $o and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $j)
						or: [ (currentCharacter between: $l and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch