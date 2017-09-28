generated
scan28X2
	self recordMatch: #(42 47).
	self step.
	currentCharacter == $>
		ifTrue:
			[ ^ self scan28X2X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self scan28X2X3