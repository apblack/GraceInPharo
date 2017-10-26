generated
scan77
	self recordMatch: #(42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan78 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan79 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $t)
												or: [ (currentCharacter between: $v and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan77X1