generated
scan113
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan113X1 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan114 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $h)
												or: [ (currentCharacter between: $j and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan113X3