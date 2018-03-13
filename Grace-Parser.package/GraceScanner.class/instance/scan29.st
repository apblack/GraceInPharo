generated
scan29
	self recordMatch: #(41).
	self step.
	currentCharacter == $h
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $r
						ifTrue: [ self recordMatch: #(41).
							self step.
							currentCharacter == $i
								ifTrue: [ self recordMatch: #(41).
									self step.
									currentCharacter == $t
										ifTrue: [ self recordMatch: #(22 41).
											self step.
											currentCharacter ~~ (Character value: 8250)
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
							(currentCharacter <= $h
								or: [ (currentCharacter between: $j and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(41).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $q
						or: [ (currentCharacter between: $s and: (Character value: 8249))
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
			^ self reportLastMatch ].
	currentCharacter == $t
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $e
				ifTrue:
					[ ^ self scan29X1 ].
			(currentCharacter <= $d
				or: [ (currentCharacter between: $f and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(41).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $g
		or: [ (currentCharacter between: $i and: $s)
				or: [ (currentCharacter between: $u and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch