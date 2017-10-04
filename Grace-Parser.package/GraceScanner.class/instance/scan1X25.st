generated
scan1X25
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self reportLastMatch