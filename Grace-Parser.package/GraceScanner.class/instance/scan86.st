generated
scan86
	self recordMatch: #(42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan87 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan86X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $x)
												or: [ 'zæ' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan86X2