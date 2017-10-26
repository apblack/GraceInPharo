generated
scan1X17
	self recordMatch: #(23).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch