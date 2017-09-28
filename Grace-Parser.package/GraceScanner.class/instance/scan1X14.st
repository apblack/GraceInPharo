generated
scan1X14
	self recordMatch: #(36 47).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(47).
			self step.
			currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch