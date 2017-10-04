generated
scan43X1X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(39 49).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan21 ].
			currentCharacter == $s
				ifTrue:
					[ ^ self scan43X1X1X1 ] ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $r)
										or: [ currentCharacter between: $t and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan43X1X1X2