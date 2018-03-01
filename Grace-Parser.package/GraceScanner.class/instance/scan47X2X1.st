generated
scan47X2X1
	self recordMatch: #(46).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan47X2X1X1 ].
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(41 46).
					self step.
					currentCharacter ~~ (Character value: 8250)
						ifTrue: [ [ self recordMatch: #(46).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $d
				or: [ (currentCharacter between: $f and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $`
		or: [ (currentCharacter between: $b and: $t)
				or: [ (currentCharacter between: $v and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch