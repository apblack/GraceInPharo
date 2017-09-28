generated
scan24
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan24X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan25 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $n)
								or: [ (currentCharacter between: $p and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch