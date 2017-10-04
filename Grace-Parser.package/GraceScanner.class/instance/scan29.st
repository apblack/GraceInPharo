generated
scan29
	[ self recordMatch: #(39 55).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '^|~' includes: currentCharacter ] ] ] ] ] ] ]
		whileTrue.
	^ self scan29X1