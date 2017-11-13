generated
scan123
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan123X1 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan124 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $h)
												or: [ (currentCharacter between: $j and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan123X3