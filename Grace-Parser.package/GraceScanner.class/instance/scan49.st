generated
scan49
	self recordMatch: #(46).
	self step.
	currentCharacter == $m
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(46).
					self step.
					currentCharacter == $o
						ifTrue: [ self recordMatch: #(46).
							self step.
							currentCharacter == $r
								ifTrue: [ self recordMatch: #(46).
									self step.
									currentCharacter == $t
										ifTrue: [ self recordMatch: #(15 46).
											self step.
											currentCharacter ~~ (Character value: 8250)
												ifTrue: [ [ self recordMatch: #(46).
													self step.
													currentCharacter ~~ (Character value: 8250) ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $s
										or: [ (currentCharacter between: $u and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ])
										ifTrue: [ [ self recordMatch: #(46).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $q
								or: [ (currentCharacter between: $s and: (Character value: 8249))
										or: [ currentCharacter >= (Character value: 8251) ] ])
								ifTrue: [ [ self recordMatch: #(46).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $n
						or: [ (currentCharacter between: $p and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(46).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $o
				or: [ (currentCharacter between: $q and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $n
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(6 46).
			self step.
			currentCharacter ~~ (Character value: 8250)
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $l
		or: [ (currentCharacter between: $o and: $r)
				or: [ (currentCharacter between: $t and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch