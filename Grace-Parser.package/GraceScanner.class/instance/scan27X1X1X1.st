generated
scan27X1X1X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(29 41).
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
	^ self reportLastMatch