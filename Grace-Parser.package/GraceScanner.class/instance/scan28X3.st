generated
scan28X3
	self recordMatch: #(15 42 47).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self scan28X3X2