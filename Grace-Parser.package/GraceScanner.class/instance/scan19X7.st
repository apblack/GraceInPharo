generated
scan19X7
	self recordMatch: #(9 39 55).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or: [ '^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self scan19X7X1