generated
scan4
	self recordMatch: #(40).
	self step.
	currentCharacter == $n
		ifTrue: [ ^ self scan5 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $m)
										or: [ currentCharacter between: $o and: $z ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch