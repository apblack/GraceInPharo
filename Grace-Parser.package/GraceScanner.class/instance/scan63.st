generated
scan63
	self recordMatch: #(42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $h
		ifTrue: [ ^ self scan64 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan65 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $g)
										or: [ (currentCharacter between: $i and: $s)
												or: [ (currentCharacter between: $u and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan63X1