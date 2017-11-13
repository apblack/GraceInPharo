generated
scan158
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan158X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan158X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $t)
										or: [ (currentCharacter between: $v and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan158X4