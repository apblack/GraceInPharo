generated
scan14X1
	self recordMatch: #(17 41 47).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan14X1X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan20 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (':<' includes: currentCharacter)
										or: [ (currentCharacter between: $> and: $@)
												or: [ '^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self scan14X1X2