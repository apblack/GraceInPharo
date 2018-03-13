generated
scan21X8
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan21X8X1 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(20 40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch