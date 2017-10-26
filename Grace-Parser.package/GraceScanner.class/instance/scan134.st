generated
scan134
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan134X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan134X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $t)
										or: [ (currentCharacter between: $v and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan134X4