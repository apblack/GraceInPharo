generated
scan6
	self recordMatch: #(49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan6X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan7 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ currentCharacter between: $p and: $z ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(49).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch