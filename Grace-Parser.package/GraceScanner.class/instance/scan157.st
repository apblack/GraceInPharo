generated
scan157
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $r
		ifTrue: [ ^ self scan158 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan157X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $x)
												or: [ ('zµæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan157X3