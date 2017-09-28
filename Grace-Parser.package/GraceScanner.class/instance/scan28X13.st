generated
scan28X13
	self recordMatch: #(42).
	self step.
	currentCharacter == $k
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(42).
					self step.
					currentCharacter == $o
						ifTrue: [ self recordMatch: #(42).
							self step.
							currentCharacter == $w
								ifTrue: [ self recordMatch: #(42).
									self step.
									currentCharacter == $n
										ifTrue: [ self recordMatch: #(8 42).
											self step.
											currentCharacter ~~ (Character value: 8250)
												ifTrue: [ [ self recordMatch: #(42).
													self step.
													currentCharacter ~~ (Character value: 8250) ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $m
										or: [ (currentCharacter between: $o and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ])
										ifTrue: [ [ self recordMatch: #(42).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $v
								or: [ (currentCharacter between: $x and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(42).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $n
						or: [ (currentCharacter between: $p and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(42).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $m
				or: [ (currentCharacter between: $o and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(42).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $j
		or: [ (currentCharacter between: $l and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch