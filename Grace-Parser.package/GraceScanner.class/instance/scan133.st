generated
scan133
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $r
		ifTrue: [ ^ self scan134 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan133X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $x)
												or: [ 'zæ' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan133X3