generated
scan28X4
	self recordMatch: #(42).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan28X4X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan28X4X1 ].
	(currentCharacter <= $q
		or: [ (currentCharacter between: $s and: $t)
				or: [ (currentCharacter between: $v and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch