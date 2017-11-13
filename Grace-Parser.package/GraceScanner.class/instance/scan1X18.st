generated
scan1X18
	self recordMatch: #(33).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self reportLastMatch