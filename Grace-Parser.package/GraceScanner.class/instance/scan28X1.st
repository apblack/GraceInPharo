generated
scan28X1
	self recordMatch: #(17 42 47).
	self step.
	currentCharacter == $=
		ifTrue:
			[ ^ self scan28X1X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (':<' includes: currentCharacter)
										or: [ (currentCharacter between: $> and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self scan28X1X3