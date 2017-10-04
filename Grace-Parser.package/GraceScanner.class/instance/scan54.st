generated
scan54
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan54X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan55 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan54X3 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $l)
										or: [ (currentCharacter between: $o and: $r)
												or: [ currentCharacter between: $t and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan54X4