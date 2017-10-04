generated
scan88
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan88X1 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan88X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $r)
												or: [ currentCharacter between: $t and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan88X4