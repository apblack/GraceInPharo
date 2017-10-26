generated
scan24
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan24X9 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(58) ].
	currentCharacter == $(
		ifTrue: [ ^ self scan24X20 ].
	currentCharacter == $)
		ifTrue: [ ^ self scan24X19 ].
	^ self scan24X24