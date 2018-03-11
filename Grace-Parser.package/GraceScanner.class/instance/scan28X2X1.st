generated
scan28X2X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(40).
									self step.
									currentCharacter == $t
										ifTrue: [ self recordMatch: #(16 40).
											self step.
											currentCharacter ~~ (Character value: 8250)
												ifTrue: [ [ self recordMatch: #(40).
													self step.
													currentCharacter ~~ (Character value: 8250) ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $s
										or: [ (currentCharacter between: $u and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ])
										ifTrue: [ [ self recordMatch: #(40).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $b
								or: [ (currentCharacter between: $d and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(40).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $d
						or: [ (currentCharacter between: $f and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(40).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $k
				or: [ (currentCharacter between: $m and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $`
		or: [ (currentCharacter between: $b and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch