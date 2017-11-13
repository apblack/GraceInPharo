generated
scan151
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self scan152 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan151X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $s)
										or: [ (currentCharacter between: $u and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan151X3