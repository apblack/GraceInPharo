generated
scan26
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan26X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan26X3 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan26X4 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $a)
						or: [ (currentCharacter between: $c and: $t)
								or: [ (currentCharacter between: $w and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch