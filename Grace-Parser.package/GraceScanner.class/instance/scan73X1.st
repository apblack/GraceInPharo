generated
scan73X1
	self recordMatch: #(2 40 55).
	self step.
	currentCharacter == $=
		ifTrue:
			[ ^ self scan73X1X1 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (':<' includes: currentCharacter)
										or: [ (currentCharacter between: $> and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan79 ].
	^ self scan73X1X3