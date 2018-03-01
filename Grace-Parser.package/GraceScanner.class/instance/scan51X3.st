generated
scan51X3
	self recordMatch: #(46).
	self step.
	currentCharacter == $t
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(46).
					self step.
					currentCharacter == $r
						ifTrue: [ self recordMatch: #(43 46).
							self step.
							currentCharacter ~~ (Character value: 8250)
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
			(currentCharacter <= $d
				or: [ (currentCharacter between: $f and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
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
	^ self reportLastMatch