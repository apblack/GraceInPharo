generated
scan139
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $b
		ifTrue: [ ^ self scan140 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan141 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan144 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ (currentCharacter between: $w and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan139X2