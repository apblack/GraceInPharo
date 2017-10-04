generated
scan13
	self recordMatch: #(49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan13X3 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan13X1 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan13X4 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ currentCharacter between: $w and: $z ] ] ] ] ])
		ifTrue:
			[ self scan13X5 ].
	^ self reportLastMatch