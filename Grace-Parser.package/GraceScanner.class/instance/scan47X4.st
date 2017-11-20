generated
scan47X4
	self recordMatch: #(45).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(18 45).
					self step.
					currentCharacter ~~ (Character value: 8250)
						ifTrue: [ [ self recordMatch: #(45).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $e
				or: [ (currentCharacter between: $g and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(45).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scan47X4X1 ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: $h)
				or: [ (currentCharacter between: $j and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch