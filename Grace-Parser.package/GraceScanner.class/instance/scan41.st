generated
scan41
	self recordMatch: #(44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan41X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(6 44).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $l)
						or: [ (currentCharacter between: $o and: $r)
								or: [ (currentCharacter between: $t and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch