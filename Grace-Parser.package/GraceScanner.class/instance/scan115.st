generated
scan115
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan115X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan116 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ (currentCharacter between: $p and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan115X3