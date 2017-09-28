generated
scan14X2
	self recordMatch: #(41 47).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self scan14X2X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or: [ '^|~' includes: currentCharacter ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self scan14X2X2