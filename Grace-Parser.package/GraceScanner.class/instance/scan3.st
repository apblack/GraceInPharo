generated
scan3
	self recordMatch: #(40).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan3X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan4 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ currentCharacter between: $p and: $z ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch