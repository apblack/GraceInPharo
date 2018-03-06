generated
scan27X4X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $c
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $u
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $d
								ifTrue: [ self recordMatch: #(41).
									self step.
									currentCharacter == $e
										ifTrue: [ self recordMatch: #(23 41).
											self step.
											currentCharacter ~~ (Character value: 8250)
												ifTrue: [ [ self recordMatch: #(41).
													self step.
													currentCharacter ~~ (Character value: 8250) ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $d
										or: [ (currentCharacter between: $f and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ])
										ifTrue: [ [ self recordMatch: #(41).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $c
								or: [ (currentCharacter between: $e and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(41).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $t
						or: [ (currentCharacter between: $v and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(41).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $k
				or: [ (currentCharacter between: $m and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(41).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $b
		or: [ (currentCharacter between: $d and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch