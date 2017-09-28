generated
scan33
	self recordMatch: #(42).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan33X2 ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $n
				ifTrue:
					[ ^ self scan33X1 ].
			(currentCharacter <= $m
				or: [ (currentCharacter between: $o and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(42).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $k
		or: [ (currentCharacter between: $m and: $n)
				or: [ (currentCharacter between: $p and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch