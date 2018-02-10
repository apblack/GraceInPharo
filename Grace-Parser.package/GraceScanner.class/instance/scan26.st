generated
scan26
	self recordMatch: #(56).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan26X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan26X1 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ (currentCharacter between: $w and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue:
			[ self scan26X3 ].
	^ self reportLastMatch