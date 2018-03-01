generated
scan42
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scan42X2 ].
	currentCharacter == $t
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $e
				ifTrue:
					[ ^ self scan42X1 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $d)
								or: [ (currentCharacter between: $f and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $g)
						or: [ (currentCharacter between: $i and: $s)
								or: [ (currentCharacter between: $u and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch