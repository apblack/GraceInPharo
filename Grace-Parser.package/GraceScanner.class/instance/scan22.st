generated
scan22
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan23 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan16 ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan23 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $/)
						or: [ (currentCharacter between: $: and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan15 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $*)
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $. and: $/)
								or: [ (currentCharacter between: $: and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch