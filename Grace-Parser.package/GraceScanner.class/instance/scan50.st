generated
scan50
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan50X1 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan51 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $h)
												or: [ currentCharacter between: $j and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan50X2