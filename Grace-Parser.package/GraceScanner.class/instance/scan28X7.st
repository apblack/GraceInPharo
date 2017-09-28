generated
scan28X7
	self recordMatch: #(42).
	self step.
	currentCharacter == $n
		ifTrue:
			[ ^ self scan28X7X1 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(7 42).
			self step.
			currentCharacter ~~ (Character value: 8250)
				ifTrue: [ [ self recordMatch: #(42).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $m
		or: [ (currentCharacter between: $o and: $r)
				or: [ (currentCharacter between: $t and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch