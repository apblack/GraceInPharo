generated
scan42
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan42X1 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan42X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $r)
												or: [ currentCharacter between: $t and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan42X3