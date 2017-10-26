generated
scan106X1X1
	self recordMatch: #(43 53).
	(self scanForString: 'ss')
		ifTrue:
			[ ^ self scan106X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $r)
										or: [ (currentCharacter between: $t and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan106X1X1X3