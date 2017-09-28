generated
scan1X9
	self recordMatch: #(47).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
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