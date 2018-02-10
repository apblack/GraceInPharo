generated
scan55X1
	self recordMatch: #(46).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $d
				ifTrue:
					[ ^ self scan55X1X1 ].
			(currentCharacter <= $c
				or: [ (currentCharacter between: $e and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan55X1X2 ].
	(currentCharacter <= $`
		or: [ (currentCharacter between: $b and: $s)
				or: [ (currentCharacter between: $u and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch