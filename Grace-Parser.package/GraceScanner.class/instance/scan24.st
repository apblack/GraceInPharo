generated
scan24
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan22 ] ] ] ].
	^ self reportLastMatch