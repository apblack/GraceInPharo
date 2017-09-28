generated
scan1X4
	self recordMatch: #(17 47).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(10 47).
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
			^ self reportLastMatch ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (':<' includes: currentCharacter)
										or: [ (currentCharacter between: $> and: $@)
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