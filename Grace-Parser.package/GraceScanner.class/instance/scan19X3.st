generated
scan19X3
	self recordMatch: #(39 55).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self scan19X3X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or: [ '^|~' includes: currentCharacter ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self scan19X3X2