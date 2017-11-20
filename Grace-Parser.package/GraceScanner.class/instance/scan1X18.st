generated
scan1X18
	self recordMatch: #(36).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	^ self reportLastMatch