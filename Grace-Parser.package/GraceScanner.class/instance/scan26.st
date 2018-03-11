generated
scan26
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan26X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(2 39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $l)
						or: [ (currentCharacter between: $o and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch