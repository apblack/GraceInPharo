generated
scan27X2
	self recordMatch: #(39).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(9 39).
					self step.
					currentCharacter ~~ (Character value: 8250)
						ifTrue: [ [ self recordMatch: #(39).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $e
				or: [ (currentCharacter between: $g and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(39).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scan27X2X1 ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: $h)
				or: [ (currentCharacter between: $j and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(39).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch