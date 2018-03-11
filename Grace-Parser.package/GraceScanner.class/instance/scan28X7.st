generated
scan28X7
	self recordMatch: #(40).
	self step.
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $i
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(23 40).
									self step.
									currentCharacter ~~ (Character value: 8250)
										ifTrue: [ [ self recordMatch: #(40).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $r
								or: [ (currentCharacter between: $t and: (Character value: 8249))
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
					^ self reportLastMatch ].
			(currentCharacter <= $h
				or: [ (currentCharacter between: $j and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(17 40).
			self step.
			currentCharacter ~~ (Character value: 8250)
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $k
		or: [ (currentCharacter between: $m and: $r)
				or: [ (currentCharacter between: $t and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch