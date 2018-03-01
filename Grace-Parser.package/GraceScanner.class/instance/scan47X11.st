generated
scan47X11
	self recordMatch: #(46).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(46).
			self step.
			currentCharacter == $l
				ifTrue: [ self recordMatch: #(46).
					self step.
					currentCharacter == $f
						ifTrue: [ self recordMatch: #(40 46).
							self step.
							currentCharacter ~~ (Character value: 8250)
								ifTrue: [ [ self recordMatch: #(46).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $e
						or: [ (currentCharacter between: $g and: (Character value: 8249))
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
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch