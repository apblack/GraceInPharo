generated
scan1X15
	self recordMatch: #(46).
	self step.
	(currentCharacter isSpaceSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter isSpaceSeparator ] whileTrue ].
	^ self reportLastMatch