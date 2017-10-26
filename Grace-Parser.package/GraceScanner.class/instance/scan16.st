generated
scan16
	self recordMatch: #(53).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan16X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan16X1 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan17 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ (currentCharacter between: $w and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue:
			[ self scan16X3 ].
	^ self reportLastMatch