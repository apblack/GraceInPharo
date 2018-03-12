generated
scan1X20
	self recordMatch: #(37).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch