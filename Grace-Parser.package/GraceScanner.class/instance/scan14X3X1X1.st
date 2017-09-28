generated
scan14X3X1X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(28 41).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan16 ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan15 ].
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $s)
								or: [ (currentCharacter between: $u and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $h)
						or: [ (currentCharacter between: $j and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch