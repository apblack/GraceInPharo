generated
scan27X7
	self recordMatch: #(41).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $h
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $o
								ifTrue: [ self recordMatch: #(41).
									self step.
									currentCharacter == $d
										ifTrue: [ self recordMatch: #(10 41).
											self step.
											currentCharacter ~~ (Character value: 8250)
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
							(currentCharacter <= $n
								or: [ (currentCharacter between: $p and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(41).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $g
						or: [ (currentCharacter between: $i and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(41).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $s
				or: [ (currentCharacter between: $u and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
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
	^ self reportLastMatch