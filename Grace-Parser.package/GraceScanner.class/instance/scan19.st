generated
scan19
	[ self recordMatch: #(41 47).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '^|~' includes: currentCharacter ] ] ] ] ] ] ]
		whileTrue.
	^ self scan19X1