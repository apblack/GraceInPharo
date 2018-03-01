generated
scan47X1X1
	self recordMatch: #(46).
	self step.
	currentCharacter == $b
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(46).
					self step.
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(46).
							self step.
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(2 46).
									self step.
									currentCharacter ~~ (Character value: 8250)
										ifTrue: [ [ self recordMatch: #(46).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $b
								or: [ (currentCharacter between: $d and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(46).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $h
						or: [ (currentCharacter between: $j and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(46).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $k
				or: [ (currentCharacter between: $m and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $a
		or: [ (currentCharacter between: $c and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch