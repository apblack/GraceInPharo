generated
scan37
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan38 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan21 ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan38 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $/)
						or: [ (currentCharacter between: $: and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan20 ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $*)
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $. and: $/)
								or: [ (currentCharacter between: $: and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch