generated
scan100
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $m
		ifTrue:
			[ ^ self scan100X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan101 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan100X3 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $l)
										or: [ (currentCharacter between: $o and: $r)
												or: [ currentCharacter between: $t and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan100X5